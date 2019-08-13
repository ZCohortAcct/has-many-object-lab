# two kinds of associations 
# has_many 
# belongs_to

class Artist
  # Artist has_many Song
  # Song belongs_to Artist

  #reader allow to read name attr value
  #setter allow to input name attr value
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    @name = name
    @songs = [] #contain multiple song OBJs!!!!
  end

  def add_song(song_obj)
    # inverse of #artist= 
    # a) add the song_obj to the arr of this artists songs
    # b tell song_obj about its artist

    # songs << song_obj # translate to => self.songs << song_obj

    @songs << song_obj # a
    song_obj.artist = self
  end

  def new_method
    puts self
  end 

  def self.other_method
    puts self
  end 
end 

# Artist.other_method

# artist_obj = Artist.new('J-zay')
# artist_obj.new_method