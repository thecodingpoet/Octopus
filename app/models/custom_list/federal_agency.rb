class CustomList::FederalAgency < CustomList::Base
  self.table_name = 'federal_agencies'

  has_many :posts, as: :postable
  validates :first_name, presence: true
  validates :last_name, presence: true
end
