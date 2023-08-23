require "rails_helper"
RSpec.describe ParkService do 
  describe "class methods" do
    context "#connection" do
      it "returns a json object" do
        parks = ParkService.new.get_state_parks("TN")
        require 'pry'; binding.pry
        expect(parks).to be_a(Hash)
        expect(parks.keys).to eq([:total, :limit, :start, :data])

        expect(parks[:data]).to be_an(Array)
      end
    end
  end
end
