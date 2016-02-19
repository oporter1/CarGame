class Car

  def initialize(make_and_year)
    @make_and_year=make_and_year
    @speed = 0
    @lights=false
    @parkingbrakeon=true
  end

  def make_and_year
    @make_and_year
  end

  def accelerate
    @speed = @speed + 10
  end

  def speed
    @speed
  end

  def brake
    if @speed >0
      @speed = @speed -10
    end
  end

  def parkingbrake
    if @parkingbrakeon==true
      disable:@car.accelerate
    end
  end
end
