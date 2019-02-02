class FederalAgency < CustomList
  # Federal Agency is a type of custom list

  validates :first_name, presence: true
  validates :last_name, presence: true
end
