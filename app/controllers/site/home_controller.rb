class Site::HomeController < SiteController

  def index
  
    @categories = Category.order(:description)
    @ads = Ad.descending_order(params[:page]) #Scope
    @carousel = Ad.random_carousel(3) #Scope

  end
end
