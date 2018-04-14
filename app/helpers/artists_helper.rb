module ArtistsHelper
  def display_artist(artist)
    @a = Artist.find(artist)
    if Artist.song
      link_to Artist.song.name, Artist.song
    else
      link_to 'Add Artist', edit_song_path(song)
    end
  end
end
