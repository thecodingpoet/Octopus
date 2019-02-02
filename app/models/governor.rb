class Governor < CustomList
  # Governor is a type of custom list

  validates :first_name, presence: true
  validates :last_name, presence: true
  
end
