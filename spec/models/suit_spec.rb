require 'rails_helper'

RSpec.describe Suit, type: :model do
  it { should respond_to(:name) }
  it { should respond_to(:description) }
end
