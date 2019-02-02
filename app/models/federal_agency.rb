class FederalAgency < CustomList
  # Federal Agency is a type of custom list
  has_many :posts, as: :postable
end
