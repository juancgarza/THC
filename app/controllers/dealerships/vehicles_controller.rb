module Dealerships
  class VehiclesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_dealership, only: [:new, :destroy, :create]

    def new
      @vehicle = Vehicle.new
    end

    def create
      @vehicle = VehicleForm.new(vehicle_params)

      if @vehicle.save && admin_policy.able_to_add_or_delete?
        redirect_to dealership_path(@dealership)
      else
        flash[:alert] = @vehicle.errors.full_messages.first
      end
    end

    private

    def admin_policy
      @admin_policy ||= AdminPolicy.new(current_user: @current_user)
    end

    def set_dealership
      @dealership = Dealership.find(params[:dealership_id])
    end

    def vehicle_params
      params.require(:vehicle).permit(
        :manufacturer,
        :model,
        :price,
        :color,
        :quantity,
        :year,
        :ownership_status
      ).merge(dealership: @dealership)
    end
  end
end