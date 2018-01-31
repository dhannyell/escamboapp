class Ad < ActiveRecord::Base
  #Constantes
  QTT_PER_PAGE = 6

  #CallBacks
  before_save :md_to_html

  #Associations
  belongs_to :category, counter_cache: true
  belongs_to :member
  has_many :comment

  #Validates
  validates :title, :description_md, :description_short, :category, presence: true
  validates :picture, :finish_date, presence: true
  validates :price, numericality: { greater_than: 0}

  #Scope
  scope :descending_order, -> (page) { order(created_at: :desc).page(page).per(QTT_PER_PAGE) }
  scope :to_the, ->(member) { where(member: member) }
  scope :where_category, -> (id) {where(category: id)}
  scope :search, -> (query, page) {where("title LIKE ?", "%#{query}%").page(page).per(QTT_PER_PAGE)}
  scope :by_category, -> (id, page) { where(category: id).page(page).per(QTT_PER_PAGE) }
  scope :random_carousel, ->(quantity) {
    if Rails.env.production?
      limit(quantity).order("RAND()") # MySQL
    else
      limit(quantity).order("RANDOM()") # SQLite
    end
  }

  #gem Ratyraze
  ratyrate_rateable 'quality'

  #gem money-rails
  monetize :price_cents

  #gem paperclip
  has_attached_file :picture, styles: { large: "800x300#", medium: "320x150#", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\z/

  private
    def md_to_html
      options = {
          filter_html: true,
          link_attributes: {
            rel: "nofollow",
            target: "_blank"
          }
      }
      
      extensions = {
        space_after_headers: true,
        autolink: true
      }
      
      renderer = Redcarpet::Render::HTML.new(options)
      markdown = Redcarpet::Markdown.new(renderer, extensions)
      self.description = markdown.render(self.description_md)
  end
end
