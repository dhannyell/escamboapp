class Category < ActiveRecord::Base
  #Associations
  has_many :ads

  #Validations
  validates_presence_of :description

  #gem Friendly_id
  include FriendlyId
  friendly_id :description, use: :slugged


end
