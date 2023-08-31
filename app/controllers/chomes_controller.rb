class ChomesController < ApplicationController
  def index
    municipality = Municipality.includes(:towns).find(params[:municipality_id])
    render json: municipality.chomes.select(:id, :name)
  end
end
