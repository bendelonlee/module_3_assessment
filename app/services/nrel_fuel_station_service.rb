class NrelFuelStationService
  def stations(zip_code)
    get_json("nearest.json", zip_code)
  end

# https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json?api_key=BQHi4bhlF3e69MncBYp2Gys3zaiUrkM4OaiYAxZm&format=JSON&location=80203&fuel_type=LPG,ELEC&limit=10&radius=6.0

  def get_json(path, zip_code)
    response = connection.get(path)
    JSON.parse(response.body, symbolize_names: true)[:fuel_stations]
  end

  def connection
    Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1/") do |f|
      f.adapter Faraday.default_adapter
      f.params["api_key"] = ENV['nrel_api_key']
      f.params["location"] = 80203
      f.params["fuel_type"] = "LPG,ELEC"
      f.params["limit"] = 10
      f.params["radius"] = 6
    end
  end


end
