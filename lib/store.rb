class Store < ActiveRecord::Base

  has_many :employees

  # Stores must always have a name that is a minimum of 3 characters
  validates :name, length: { minimum: 3 }

  # Stores have an annual revenue that is a number that must be 0 or more
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  # Stores must carry at least either mens or womens apparel
  validate :carries_mens_or_womens_apparel

  def carries_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "Must carry at least one of either mens or womens apparel")
      errors.add(:womens_apparel, "Must carry at least one of either mens or womens apparel")
    end
  end

end