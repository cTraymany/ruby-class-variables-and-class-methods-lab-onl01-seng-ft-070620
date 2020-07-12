class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@artists = []
    
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    genre_array = []
    @@genres.each do |genre|  
      unless genre_array.include?(genre)
        genre_array << genre
      end
    end
    genre_array
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each_with_index do |genre, count|
      if !genre_hash[genre]
        count = 0
        genre_hash[genre] = count += 1
      elsif genre_hash.include?(genre)
         genre_hash[genre] = count += 1
      end
    end  
    genre_hash
  end
  
  def self.artist_count
        artist_hash = {}
    @@artists.each_with_index do |artist, count|
      if !artist_hash[artist]
        count = 0
        artist_hash[artist] = count += 1
      elsif artist_hash.include?(artist)
         artist_hash[artist] = count += 1
      end
    end  
    artist_hash
  end
  

end