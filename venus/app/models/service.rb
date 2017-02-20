class Service < ActiveRecord::Base
  belongs_to :stylist
  has_many :details, dependent: :destroy
end
