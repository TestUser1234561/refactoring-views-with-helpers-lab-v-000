class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name=(name)
    self.artst = Song.find_or_create_by(name:name)
  end

  def artist_name
    self.artist.name
  end
end
