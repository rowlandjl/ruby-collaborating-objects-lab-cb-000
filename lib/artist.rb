class Artist 
  attr_accessor :name
  
  @@all = []
  
  def self.all 
    @@all 
  end 
  
  def initialize(name)
    @name = name 
    self.class.all << self 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
  def songs 
    Song.all.select {|song| song.artist == self} 
  end 
  
  def self.find_or_create_by_name(name)
    self.all.select {|song| song.name == name}.nil? ? self.new(name) : 
  end 
  
  def print_songs 
    self.songs.each {|song| song.name }
  end 
  
end 