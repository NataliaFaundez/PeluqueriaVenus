class Service < ActiveRecord::Base
  belongs_to :stylist
  has_many :detail, dependent: :destroy
end
