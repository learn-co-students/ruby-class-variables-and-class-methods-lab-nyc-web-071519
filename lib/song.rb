class Song
    attr_accessor :name, :artist, :genre
   
    @@count = 0
    @@artists = []
    @@genres = []

    @@genre_count_hash = {}
    @@artist_count_hash = {}

    @@all = []

    def initialize(name, artist, genre)
        @@count += 1
        
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre

        @@all << self 
    end

    def self.count
        #binding.pry
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_hash = {}
        @@genres.length.times do |i|
            genre_hash[@@genres[i]] = @@genres.count(@@genres[i])
        end
        genre_hash
    end

    def self.artist_count
        artist_hash = {}
        @@artists.length.times do |i|
            artist_hash[@@artists[i]] = @@artists.count(@@artists[i])
        end
        artist_hash
    end
end
