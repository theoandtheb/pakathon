class Property < ActiveRecord::Base
		has_and_belongs_to_many :affiliations
		belongs_to :user
		geocoded_by :address
		after_validation :geocode
end
