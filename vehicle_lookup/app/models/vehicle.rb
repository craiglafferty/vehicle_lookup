class Vehicle < ApplicationRecord

  # ===============
  # = Validations =
  # ===============

  validates :price, presence: true
  validates :registration, presence: true
  validates :manufacturer, presence: true

end
