require 'rails_helper'

RSpec.feature "User visits playlists index" do
  scenario "they see each playlist's name" do
    playlists = %w(Country, Rap, Hip Hop, Axe).map do |playlist_name|
      Playlist.create(name: playlist_name)
    end

    visit playlists_path

    playlists.each do |playlist|
      expect(page).to have_link playlist.name, href: playlist_path(playlist)
    end
  end
end
