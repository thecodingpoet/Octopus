class FederalAgency < CustomList
  # Federal Agency is a type of custom list
  include Permissions
  has_many :posts, as: :postable
end
