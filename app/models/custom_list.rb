class CustomList < ApplicationRecord
  scope :governors, -> { where(type: 'Governor')}
  scope :federal_agencies, -> { where(type: 'Federal Agency')}
end
