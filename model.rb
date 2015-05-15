class RestRoom
  attr_reader :name, :location, :borough, :handicap
  attr_accessor :distance
  def initialize(args = {})
    @name = args[:name]
    @location = args[:location]
    @borough = args[:borough]
    @handicap = args[:handicapaccessible] || 'No'
    @distance = 0
  end
end
