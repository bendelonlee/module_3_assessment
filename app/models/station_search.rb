class StationSearch
  attr_reader :stations
  def initialize(zipcode)
    @zipcode = zipcode
    @stations = [0] * 10
  end
end
