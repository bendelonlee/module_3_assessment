class NrelFuelStationService
  def stations(zip_code)
    get_json("nearest.json")
  end

https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=BQHi4bhlF3e69MncBYp2Gys3zaiUrkM4OaiYAxZm&format=JSON&location=80203&fuel_type=LPG,ELEC&limit=10&radius=6.0

  def get_json

  end

  def connection
    Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/")
  end


end
