module ArtistsHelper
  def display_artist(artist)
    @a = Artist.find(artist)
    if Artist.song
      link_to @a.song.name, @a.song
    else
      link_to 'Add Artist', edit_song_path(@a.song)
    end
  end
end
