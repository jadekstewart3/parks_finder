class ParksController < ApplicationController
  def index
    @parks = ParkFacade.new.parks_by_state(params[:state])
  end
end