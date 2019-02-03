class CustomList::Governor < List
  has_many :posts, as: :postable
  validates :first_name, presence: true
  validates :last_name, presence: true
end
