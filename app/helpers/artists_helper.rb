module ArtistsHelper
  def display_artist(artist)
    @a = Artist.find(artist)
  end
end
