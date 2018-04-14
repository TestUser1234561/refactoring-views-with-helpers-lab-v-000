class Song < ActiveRecord::Base
  belongs_to :artist

  def song_name=(name)
    self.song = Song.find_or_create_by(name:name)
  end

  def song_name
    self.song.name
  end
end
