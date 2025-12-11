require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryBot.create(:user) }

  describe "#update_tarot_streak!" do
    context "when the latest is from today" do
      let(:user) { FactoryBot.create(:user, streak_count: 2, streak_last_date: Date.current) }

      it "returns the current streak count" do
        user.update_tarot_streak!
        user.reload
        expect(user.streak_count).to eq(2)
      end
    end

    context "when the latest is from yesterday" do
      let(:user) { FactoryBot.create(:user, streak_count: 2, streak_last_date: Date.current - 1.day) }

      it "increments the streak count" do
        user.update_tarot_streak!
        user.reload
        expect(user.streak_count).to eq(3)
      end
    end

    context "otherwise" do
      it "restarts the streak count" do
        user.update_tarot_streak!
        user.reload
        expect(user.streak_count).to eq(1)
      end
    end
  end
end
