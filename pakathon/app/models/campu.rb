class Campu < ActiveRecord::Base
	belongs_to :institution
	geocoded_by :address
	after_validation :geocode
	has_many :users
end
