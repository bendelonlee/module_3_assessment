require "rails_helper"
describe Station do
  it 'exists' do
    station = Station.new({})
    expect(station).to be_a(Station)
  end
  it 'has attributes' do
    args = {
            name: "something",
            address: "something",
            fuel_types: "something",
            distance: "something",
            accesstimes: "something"
          }
    station = Station.new(args)
    expect(station.name).to eq(args[:name])
    expect(station.address).to eq(args[:address])
    expect(station.fuel_types).to eq(args[:fuel_types])
    expect(station.distance).to eq(args[:distance])
    expect(station.accesstimes).to eq(args[:accesstimes])
  end

end
