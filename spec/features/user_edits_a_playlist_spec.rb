# require 'rails_helper'
#
# RSpec.feature "User visits a choosen playlist" do
#   scenario "they edit the playist" do
#     playlist = FactoryGirl.create(:playlist_with_songs)
#     first, second, third = playlist.songs
#     new_song = create(:song, title: "New Song")
#
#     visit playlist_path(playlist)
#     click_on "Edit"
#     uncheck("song-#{first.id}")
#     check("song-#{new_song.id}")
#     click_on "Update Playlist"
#
#     save_and_load_page
#
#     expect(page).to have_content playlist.name
#     expect(page).to_not have_content first.title
#     expect(page).to have_content new_song.title
#   end
# end
