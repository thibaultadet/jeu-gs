class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :letter_sound]

  def home
  end

  def letter_sound
    @game = Game.find_by(name: "Sons & Mots")
    @materials = Material.where(game: @game)
    @exercises = Exercise.where(game: @game)
  end
end
