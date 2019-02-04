require 'rails_helper'

RSpec.describe List, type: :model do
  subject { build(:list) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:category) }
  it { should validate_uniqueness_of(:name).scoped_to(:category) }
end
