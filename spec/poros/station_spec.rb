require "rails_helper"
describe Station do
  it 'exists' do
    station = Station.new({})
    expect(station).to be_a(Station)
  end
end
