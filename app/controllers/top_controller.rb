class TopController < ApplicationController
  def index
    @municipalities = Municipality.all
    @chomes = Chome.all
  end
end
