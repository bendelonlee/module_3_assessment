class StationSearch
  attr_reader :stations, :zipcode
  def initialize(zipcode)
    @zipcode = zipcode
  end

  def stations
    service.stations(@zipcode).map do |data|
      Station.new(data)
    end
  end

  private

  def service
    NrelFuelStationService.new()
  end

end
