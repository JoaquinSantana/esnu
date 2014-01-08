class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def suma_rol
		line_items.to_a.count
	end
end
