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
      #check if it's already in hash
      if genre_count != g
        genre_count[g] = 1
      else
        genre_count[g] += 1
      #if no add new key with the value
      #if yes iterate/ add 1 to count
      end
    end
    genre_count
  end
  
end






