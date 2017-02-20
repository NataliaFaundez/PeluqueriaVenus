class Client < ActiveRecord::Base
	has_many :sale, dependent: :destroy
	has_many :detail, dependent: :destroy
end
