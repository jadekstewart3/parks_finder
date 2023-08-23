require "rails_helper"

RSpec.describe StatePark do 

  let(:co_park) { ParkFacade.new.parks_by_state("co").first }

  it "exits" do 
    expect(co_park).to be_a(StatePark)
  end

  it "has the correct attributes" do 
    expect(co_park.full_name).to eq("Amache National Historic Site")
    expect(co_park.description).to eq("Amache, also known as the Granada Relocation Center, near Granada, Colorado was one of ten incarceration sites established by the War Relocation Authority during World War II to unjustly incarcerate Japanese Americans. Over 10,000 people, most American citizens, were incarcerated at Amache from 1942-1945. Amache - a place to reflect, recommit, and further the pursuit of freedom and justice.")
    expect(co_park.directions).to be_a(String)
    expect(co_park.hours).to be_a(String)
  end
end