class LineItem < ActiveRecord::Base
  belongs_to :role
  belongs_to :cart
  belongs_to :order

end
