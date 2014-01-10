class Order < ActiveRecord::Base
	validates :pracownik, :obszar, presence: true
end
