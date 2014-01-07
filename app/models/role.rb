class Role < ActiveRecord::Base
	has_many :line_items

	before_destroy :nie_posiada_line_item

	validates :nazwa, :opis, :numer, presence: true, uniqueness: true
	validates :numer, numericality: { only_integer: true, message: 'Podaj prawidłową liczbę' }


	private

	def nie_posiada_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Rola występuje na wniosku')
			return false
		end
	end
	
end
