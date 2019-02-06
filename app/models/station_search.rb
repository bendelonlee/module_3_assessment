class StationSearch
  attr_reader :stations
  def initialize(zipcode)
    @zipcode = zipcode
    @stations = [0] * 10
  end
  def get_json
    Faraday.new()
    https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=BQHi4bhlF3e69MncBYp2Gys3zaiUrkM4OaiYAxZm&format=JSON&location=80203&fuel_type=LPG,ELEC&limit=10&radius=6.0
  end
end
