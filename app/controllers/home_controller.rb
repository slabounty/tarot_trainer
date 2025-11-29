class HomeController < ApplicationController
  def index
    @cards = Dir.glob(Rails.root.join("app/assets/images/tarot/*"))
                .map { |path| File.basename(path) }

    @card = @cards.sample
  end
end
