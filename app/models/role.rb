class Role < ActiveRecord::Base
	validates :nazwa, :opis, :numer, presence: true, uniqueness: true
	validates :numer, numericality: { only_integer: true, message: 'Podaj prawidłową liczbę' }
end
