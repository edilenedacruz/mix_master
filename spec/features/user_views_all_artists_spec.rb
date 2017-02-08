require 'rails_helper'

RSpec.feature "User visits artists index" do
  scenario "they see each artist's name" do
    artists = %w(Elvis Madonna Janis).map do |artist_name|
      Artist.create(name: artist_name, image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    end

    visit artists_path

    artists.each do |artist|
      expect(page).to have_link artist.name, href: artist_path(artist)
    end
  end
end
