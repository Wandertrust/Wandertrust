class TripsController < ApplicationController
  def new
    @user = current_user
  end

  def show
    @trip = Trip.find(params[:id])
  end
end