class MonstersController < ApplicationController
    def index
        monsters = Monster.all.to_json(include: :parts)
        render json: monsters 
    end

    def create
        monster = Monster.create(user_params)
        byebug
    end

    private 

    def user_params
        params.require(:monster).permit(:name)
    end
end
