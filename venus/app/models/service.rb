class Service < ActiveRecord::Base
  belongs_to :stylist
  has_many :details, dependent: :destroy
  validates_associated :details
end
