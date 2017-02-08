require 'rails_helper'

RSpec.feature "User visits an specific artist's page" do
  scenario "they delete artist's information" do
    artist = Artist.create(name: "Ivete Sangalo", image_path: "http://ivetesangalo.s3.amazonaws.com/wp-content/themes/2015/img/avatar.jpg")


    visit artist_path(artist)
    click_on "Delete"

    expect(page).to_not have_content artist.name
  end
end
