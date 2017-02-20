class Client < ActiveRecord::Base
	has_many :sales, dependent: :destroy
	has_many :details, dependent: :destroy
end
