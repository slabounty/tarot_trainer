require 'rails_helper'

RSpec.describe TarotCard, type: :model do
  let(:image_file) { "some_file.png" }
  let(:name) { "some tarot card name" }
  let(:meaning) { "some tarot card meaning" }
  let(:arcana) { "some tarot card arcana" }
  let(:element) { "some tarot card element" }
  let(:tarot_card) { described_class.create(
    image_file: image_file,
    name: name,
    meaning: meaning,
    arcana: arcana,
    element: element,) }

  describe "#image_file" do
    it "has the correct image file name" do
      expect(tarot_card.image_file).to eq(image_file)
    end
  end

  describe "#name" do
    it "has the correct image file name" do
      expect(tarot_card.name).to eq(name)
    end
  end

  describe "#meaning" do
    it "has the correct image file name" do
      expect(tarot_card.meaning).to eq(meaning)
    end
  end

  describe "#arcana" do
    it "has the correct image file name" do
      expect(tarot_card.arcana).to eq(arcana)
    end
  end

  describe "#element" do
    it "has the correct image file name" do
      expect(tarot_card.element).to eq(element)
    end
  end
end
