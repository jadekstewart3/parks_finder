class ParkFacade
  attr_reader :service

  def initialize
    @service = ParkService.new
  end

  def parks_by_state(state)
    state_parks = @service.get_state_parks(state)
    state_parks[:data].map do |park|
      StatePark.new({
        name: park[:fullName],
        description: park[:description],
        directions: park[:directionsInfo],
        hours_operation: park[:operatingHours].first[:standardHours]
                      })
    end
  end
end