class Stylist < ActiveRecord::Base
	has_many :services, dependent: :destroy
end
