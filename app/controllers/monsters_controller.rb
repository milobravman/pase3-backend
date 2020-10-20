class MonstersController < ApplicationController
    def index
        monsters = Monster.all.to_json(include: :parts)
        render json: monsters 
    end

    def create

    end

    private 

    def user_params

    end
end
