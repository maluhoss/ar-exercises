class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
  validate :women_or_men

  has_many :employees

  def women_or_men
    if womens_apparel || mens_apparel
      true
    else
      errors.add(:mens_apparel, "Need to carry men's or women's apparel")
      errors.add(:womens_apparel, "Need to carry men's or women's apparel")
    end
  end
end
