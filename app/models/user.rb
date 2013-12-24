class User < ActiveRecord::Base
	belongs_to :branch
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def full_name
  	imie + " " + nazwisko
  end
end
