class CustomList < ApplicationRecord
  scope :governors, -> { where(type: 'Governor')}
  scope :federal_agencies, -> { where(type: 'Federal Agency')}

  validates :first_name, presence: true
  validates :last_name, presence: true
end
