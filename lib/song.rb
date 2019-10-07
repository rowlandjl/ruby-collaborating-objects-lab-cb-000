class Song 
  attr_accessor :name, :artist
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    self.class.all << self 
  end 
  
  def self.new_by_filename(name)
    parse = name.split(" - ")
    Artist.find_or_create_by_name(parse[0])
    Song.new(parse[1])
  end 
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else 
      self.artist.name = name 
    end 
  end 
  
end 