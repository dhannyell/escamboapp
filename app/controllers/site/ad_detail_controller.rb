class Site::AdDetailController < SiteController
    def show
        @categories = Category.order(:description)
        @ad = Ad.find(params[:id])
    end
end
