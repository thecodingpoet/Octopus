class Post < ApplicationRecord
  belongs_to :postable, polymorphic: true

  scope :by_social_media, -> (social_media) {where(social_media: social_media)}
  scope :by_postable_type, -> (postable_type) {where(postable_type: postable_type)}
  scope :by_date_range, -> (from, to) {where(created_at: from..to)}

  validates :content, presence: true
  validates :link, presence: true
  validates :social_media, presence: true
end
