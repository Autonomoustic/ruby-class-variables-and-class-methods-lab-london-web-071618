class Song
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq.each do |song|
      puts song
    end
  end
  
  def self.genres
    @@genres.uniq.each do |g|
      puts g
    end
  end
  
  def self.genre_count
    genre_count = {}
    @@genres.each do |g|
      genre_count = 
  
end






