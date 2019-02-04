require 'rails_helper'

RSpec.describe Post, type: :model do
  it { should validate_presence_of(:content) }
  it { should validate_presence_of(:link) }
  it { should validate_presence_of(:social_media) }
  it { should belong_to(:postable) }
end
