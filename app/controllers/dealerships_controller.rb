class DealershipsController < ApplicationController
  before_action :authenticate_user!

  def index
    @dealerships = Dealership.order(name: :desc)
  end

  def show
    @dealership = Dealership.find(params[:id])
    @items = @dealership.items
  end
end