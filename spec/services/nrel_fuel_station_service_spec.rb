require "rails_helper"
describe NrelFuelStationService do
  it '.stations' do
    service = NrelFuelStationService.new
    VCR.use_cassette("nrel/stations_near_80203") do
      expect(service.stations(80203).count).to eq(10)
    end
  end
end
