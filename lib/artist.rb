require 'pry'

class Artist 
  
  attr_accessor :name # initializes name
  
  @@all = []
  
  def initialize(name) 
    @name = name  # initializes name 
    @@all << self # will add new artist to array when created (artist = Artist.new(artist))
  end
  
  def self.all # class method will add artist to class variable set to empty array
    @@all
  end
  
  def songs # returns song by a specific artist 
    Song.all.select do |song| # get all songs fron Song class and self each one
      song.artist == self # song.artist == artist of song 
    end
  end
  
  def new_song(name)
    Song.new(name, self, genre)
  end
  
  def genre
    songs.map do |song|
      song.genre
  end
end
  
end