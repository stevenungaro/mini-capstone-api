class Product < ApplicationRecord
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
