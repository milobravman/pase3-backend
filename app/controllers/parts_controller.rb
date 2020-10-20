class PartsController < ApplicationController
    def index
        parts = Part.all.to_json(except: [:created_at, :updated_at])
        render json: parts
    end
end
