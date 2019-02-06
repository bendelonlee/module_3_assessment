class StationSearch
  attr_reader :stations, :zipcode
  def initialize(zipcode)
    @zipcode = zipcode
  end

  def stations
    NrelFuelStationService.new().stations(@zipcode).map do |data|
      Station.new(data)
    end
  end
end
