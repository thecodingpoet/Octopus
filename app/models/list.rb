class List < ApplicationRecord
  validates :name, presence: true, uniqueness: { scope: :category }
  validates :category, presence: true
end