class Employee < ActiveRecord::Base

  belongs_to :store

  # Employees must always have a first & last name present
  validates :first_name, :last_name, presence: true

  # Employees must have a hourly_rate that is a number (integer) between 40 and 200
  validates :hourly_rate, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }

  # Employees must always have a store that they belong to (can't have an employee that is not assigned a store)
  validates :store, presence: true

end
