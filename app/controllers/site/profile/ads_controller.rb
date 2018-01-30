class Site::Profile::AdsController < Site::ProfileController
    before_action :authenticate_member!
    before_action :set_product, only: [:edit, :update, :destroy]

    def index
        @ads = Ad.to_the(current_member) #Scope
    end
    
    def edit
        #
    end
    
    def update
        if @ad.update(params_ad)
            redirect_to site_profile_ads_path, notice: "Atualizado com Sucesso"
        else
            render :edit, notice: "Erro ao tentar atualizar"
        end
    end

    def new
        @ad = Ad.new
    end

    def create
        @ad = Ad.new(params_ad)
        @ad.member = current_member
        
        if @ad.save
            redirect_to site_profile_ads_path, notice: "Criado com Sucesso"
        else
            render :new, notice: "Erro ao tentar criar novo anuncio"
        end
    end

    def destroy
        if @ad.destroy
            redirect_to site_profile_ads_path, notice: "Apagado com Sucesso"
        end
    end
    private
    
    def set_product
        @ad = Ad.find(params[:id])
    end

    def params_ad
        params.require(:ad).permit(:id, :title, 
        :category_id, :price, :picture, :description,
        :description_md,:description_short,:finish_date)
    end
end
