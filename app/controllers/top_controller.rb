class TopController < ApplicationController
  def index
    @municipalities = Municipality.all
    @chomes = Chome.all
  end

  def result
    @municipality = Municipality.find(params[:municipality_id])
    @chome = Chome.find(params[:chome_id])
  end
end
