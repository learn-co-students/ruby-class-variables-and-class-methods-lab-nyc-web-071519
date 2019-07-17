class Song
    attr_reader :name
    attr_accessor :artist, :genre
    

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre


    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        new_hash={}
        genres.each {|genre|
            #return @@genres.count(genre)
            new_hash[genre] = @@genres.count(genre)
        }
        new_hash
    end

    def self.artist_count
        new_hash={}
        artists.each {|artist|
            new_hash[artist] = @@artists.count(artist)
        }
        new_hash
    end







end