class FishTank
  def initialize
    # great place to do any initialize
    # setup or configuration
    @fish = []
    @water_volume = 0
    @salinity = nil
  end

  def fill_tank(volume, water_type)
    # expect volume to be number
    # true = fresh, false => salt
    # "fress" / "salt"
    # "fresh" / :salt
    @water_volume = volume + @water_volume
    @salinity = water_type
  end
end

tank = FishTank.new
