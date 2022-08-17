module ApplicationHelper
  def to_idr(number)
    number_to_currency(number, unit: 'Rp', locale: :id, precision: 0)
  end

  def to_idr_number(number)
    number_to_currency(number, unit: '', locale: :id, precision: 0)
  end
end
