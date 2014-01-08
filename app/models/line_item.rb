class LineItem < ActiveRecord::Base
  belongs_to :role
  belongs_to :cart

	validates :role_id, uniqueness: true
end
