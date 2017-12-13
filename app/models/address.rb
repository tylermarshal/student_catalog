class Address < ApplicationRecord
  validates :description, :street_address, :city, :state, :zipcode, :presence => true
  belongs_to :student
end
