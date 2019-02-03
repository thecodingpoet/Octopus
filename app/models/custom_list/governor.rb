class CustomList::Governor < CommonList
  has_many :posts, as: :postable
  validates :first_name, presence: true
  validates :last_name, presence: true
end
