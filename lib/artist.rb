class Artist
   attr_accessor :name, :songs

   def initialize(name)
      @name = name
      @songs = Song.all
   end

   def add_song(song)
      @songs << song
      song.artist = self
   end

   def add_song_by_name(song_name)
      new_song = Song.new(song_name)
      @songs << new_song
      new_song.artist = self
   end

   def Artist.song_count
      Song.all.uniq.length
   end
end