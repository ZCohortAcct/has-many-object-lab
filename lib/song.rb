# Artist has_many Song
# Song belongs_to Artist

class Song
  # attr_accressor :artist => cnt use b/c need more functionality

  attr_reader :artist
  
  def initialize(title)
    @name = title
  end

  # setting the artist attribute
  # forfills the belongs ass 
   def artist=(artist_obj)
    @artist = artist_obj

    #self is a song obj
    artist_obj.songs.push(self)
   end 

   #class method
   # self refers to the class
   def self.new_class_method

   end 
end

# #new === class method
# new_song = Song.new

# #artist= === instance method
# new_song.artist= <Artist:0x00007f97ba0b1e28 @name="Adele", @songs=[]>