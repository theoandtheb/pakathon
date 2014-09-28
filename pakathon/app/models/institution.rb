class Institution < ActiveRecord::Base
	has_many :campus
	has_many :users
end
