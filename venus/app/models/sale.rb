class Sale < ActiveRecord::Base
  belongs_to :client
  belongs_to :product
end
