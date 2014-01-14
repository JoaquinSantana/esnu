class Cart < ActiveRecord::Base
	has_many :line_items, dependent: :destroy

	def suma_rol
		line_items.to_a.count
	end

	def add_role(role_id)
		current_item = line_items.find_by(role_id: role_id)
		if current_item
			errors.add(:role_id, "rola jest już na wniosku")
		else
			current_item = line_items.build(role_id: role_id)
		end
		current_item			
	end
end
