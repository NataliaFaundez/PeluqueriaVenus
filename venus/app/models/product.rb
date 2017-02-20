class Product < ActiveRecord::Base
	has_many :sale, dependent: :destroy
end
