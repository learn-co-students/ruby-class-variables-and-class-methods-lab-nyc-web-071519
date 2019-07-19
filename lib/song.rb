class Song

    attr_accessor :artist, :genre
    attr_reader :name

    @@all = []
    @@artists = []
    @@count = 0
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        Song.all << self
        @@genres << @genre
        @@artists << @artist 
    end

    def self.all
        @@all
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.song_names
        @@song_names
    end

       def self.genre_count
        genres_hash = {}
        genres.each do |tunes|
            genres_hash[tunes] = @@genres.count(tunes)
        end
        genres_hash
    end

        def self.artist_count
        artist_hash = {}
        artists.each {|musician|
            artist_hash[musician] = @@artists.count(musician)
        }
        artist_hash
    end

end





# end

