require "rails_helper"

RSpec.describe ParkFacade do 
  subject(:facade) { described_class.new }

  let(:parks) { facade.parks_by_state("TN") }

  describe "instance methods" do
    context "#parks_by_state" do
      it "returns an array of park objects for the given state" do
        expect(parks).to be_an(Array)
        expect(parks.first).to be_a(StatePark)
      end
    end
  end
end