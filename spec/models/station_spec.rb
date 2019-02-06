require "rails_helper"
describe Station do
  it 'exists' do
    station = Station.new({})
    expect(station).to be_a(Station)
  end
  it 'has attributes' do
    name = "the station",
    addr = "1000 ave",
    type = "ELEC",
    dist = 6.0,
    times = "Only on Sundays"
    args = {
            station_name: name,
            street_address: addr,
            fuel_type_code: type,
            distance: dist,
            access_days_time: times
          }
    station = Station.new(args)
    expect(station.name).to eq(name)
    expect(station.address).to eq(addr)
    expect(station.fuel_types).to eq([type])
    expect(station.distance).to eq(dist)
    expect(station.access_times).to eq(times)
  end

end
