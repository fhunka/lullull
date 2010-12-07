class Admin::OrdersController < ApplicationController
  layout "administration"
  def index
    @orders = Order.all
  end

  def show
  end

end
