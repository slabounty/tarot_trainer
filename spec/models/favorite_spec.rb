require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { respond_to :user }
  it { respond_to :tarot_card }
end
