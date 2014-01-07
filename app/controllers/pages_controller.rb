class PagesController < ApplicationController
  def home
  	@roles = Role.order(:numer)
  end

  def pomoc
  end
end
