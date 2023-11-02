class Product < ApplicationRecord
  validates :name, :price, :description, presence: true
  validates :name, uniqueness: true
  validates :price, numericality: { greater_than: 0 }
  validates :description, length: { in: 10..500 }

  belongs_to :supplier
  has_many :images

  def is_discounted?
    if price < 10
      return true
    else
      return false
    end
  end

  def tax
    tax_amount = price * 0.09
  end

  def total
    total_amount = price + tax
  end
end
