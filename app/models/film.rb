class Film < ActiveRecord::Base
  validates :name, presence: true
  validates :rate, numericality: true
  validates :duration, numericality: { only_integer: true }
end
