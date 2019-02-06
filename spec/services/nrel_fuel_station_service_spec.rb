require "rails_helper"
describe NrelFuelStationService do
  it '.stations' do
    service = NrelFuelStationService.new
    expect(service.stations(80203).count).to eq(10)
  end
end
