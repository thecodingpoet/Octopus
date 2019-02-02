class FederalLegislator < ApplicationRecord
  # Federal Legislator is a non-custom list but shares similar behavior as custom lists
  include Permissions
  has_many :posts, as: :postable
end
