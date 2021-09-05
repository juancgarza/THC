module Dealerships
  class ItemsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_dealership, only: [:destroy]

    def destroy
      @item = Item.find(params[:id])

      if admin_policy.able_to_add_or_delete? && @item.destroy
        redirect_to dealership_path(@dealership)
        flash[:notice] = "Vehicle deleted."
      else
        flash[:alert] = @item.errors.full_messages.first
      end    
    end

    def admin_policy
      @admin_policy ||= AdminPolicy.new(current_user: @current_user)
    end

    private

    def set_dealership
      @dealership = Dealership.find(params[:dealership_id])
    end
  end
end