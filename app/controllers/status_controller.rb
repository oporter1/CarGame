class StatusController < ApplicationController
  def show
    @car = YAML.load(session[:car])
  end

  def accelerate
    @car=YAML.load(session[:car])
    @car.accelerate
    session[:car] =@car.to_yaml
    render "/status/show"
  end

  def brake
    @car=YAML.load(session[:car])
    @car.brake
    session[:car] =@car.to_yaml
    render "/status/show"
  end

  def parkingbrake
    @car=YAML.load(session[:car])
    @car.parkingbrake
    session[:car] =@car.to_yaml
    render "/status/show"
  end
end
