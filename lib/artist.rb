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
    Song.all.select do |song| # get all songs from Song class 
      song.artist == self # song.artist == artist of song 
    end
  end
  
  def new_song(name, genre) # creates new song with genre associated with artist
    Song.new(name, self, genre) # reflects init of Song class to create new song with arguments
  end
  
  def genres # has many genres, through songs
    songs.map do |song| # connects songs to genres
      song.genre 
  end
end
  
end