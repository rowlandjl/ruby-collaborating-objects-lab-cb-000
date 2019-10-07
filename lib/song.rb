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
    parse = 
  end 
  
  def artist_name=(name)
    if (self.artist.nil?)
      self.artist = Artist.new(name)
    else 
      self.artist.name = name 
    end 
  end 
  
end 