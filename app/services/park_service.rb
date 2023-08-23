class ParkService
  def get_state_parks(state)
    response = connection.get("parks?stateCode=#{state}")
    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def connection
    url = "https://developer.nps.gov/api/v1/"
    Faraday.new(url: url, params: { api_key: ENV["parks_token"] })
  end
end

