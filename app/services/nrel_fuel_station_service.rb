class NrelFuelStationService
  def stations(zip_code)
    get_json("nearest.json", zip_code)
  end
  
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
