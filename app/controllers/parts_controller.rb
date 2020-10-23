class PartsController < ApplicationController
    def index
        parts = Part.all.to_json(except: [:created_at, :updated_at])
        render json: parts
    end

    def create
        part = Part.create(user_params)
        render json: part
        
    end


    def destroy
        part = Part.find(params[:id])
        part.destroy
    end

    private 

    def user_params
        params.require(:part).permit(:name, :part_type, :attack_power, :health, :image, :monster_id)
    end
end
