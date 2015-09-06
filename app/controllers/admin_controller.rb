class AdminController < ApplicationController
  include CurrentCart
before_action :set_cart, only: [:new, :create,:index]
  def index
    @total_orders = Order.count
  end
end

