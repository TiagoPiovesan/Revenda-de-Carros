class Sale < ActiveRecord::Base
  belongs_to :car
  belongs_to :customer

  validates :price, :car, :customer, presence: true
  validates :price, numericality: true
end
