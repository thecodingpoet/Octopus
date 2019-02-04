class NonCustomList::FederalLegislator < NonCustomList::Base
  self.table_name = 'federal_legislators'

  has_many :posts, as: :postable
  validates :first_name, presence: true
  validates :last_name, presence: true
end
