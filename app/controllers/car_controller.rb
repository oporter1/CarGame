class CarController < ApplicationController
  def new_car
    if !params.has_key?(:make_and_year) || params[:make_and_year].strip.empty?
      render "new_car.html.erb"
    else
      #this is an object
      car = Car.new(params[:make_and_year].strip)
      #this is turning the object into a string
      session[:car]=car.to_yaml
      redirect_to "/status/show"
    end

  end
end
