module Dealerships
  class ItemsController < ApplicationController
    before_action :authenticate_user!

    def destroy
      @dealership = Dealership.find(params[:dealership_id])
      @item = Item.find(params[:id])

      if @item.destroy
        redirect_to dealership_path(@dealership)
        flash[:notice] = "Vehicle deleted."
      else
        flash[:alert] = @item.errors.full_messages.first
      end    
    end
  end
end