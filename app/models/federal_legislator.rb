class FederalLegislator < CustomList
  # Federal Legislator is a non-custom list but shares similar behavior as custom lists
  self.table_name = "federal_legislators"
  has_many :posts, as: :postable
end
