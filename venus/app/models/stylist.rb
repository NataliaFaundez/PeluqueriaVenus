class Stylist < ActiveRecord::Base
	has_many :service, dependent: :destroy
end
