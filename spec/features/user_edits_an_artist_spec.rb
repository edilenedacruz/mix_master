require 'rails_helper'

RSpec.feature "User visits an specific artist's page" do
  scenario "they edit artist's information" do
    artist = Artist.create(name: "Ivete Sangalo", image_path: "http://ivetesangalo.s3.amazonaws.com/wp-content/themes/2015/img/avatar.jpg")
    updated_name = "Rainha"

    visit artist_path(artist)
    click_on "Edit"
    fill_in "artist_name", with: updated_name
    click_on "Update Artist"

    expect(page).to have_content updated_name
    expect(page).to_not have_content artist.name
    expect(page).to have_css("img[src=\"#{artist.image_path}\"]")
  end
end
