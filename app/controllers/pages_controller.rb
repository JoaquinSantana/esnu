class PagesController < ApplicationController
	include CurrentCart
	before_action :set_cart

  def home
  	@roles = Role.order(:numer)
  end

  def pomoc
  end
end
