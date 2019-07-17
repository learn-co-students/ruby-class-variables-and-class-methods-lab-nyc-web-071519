class Song
attr_accessor :name, :artist, :genre
    @@count=0
    @@artists=[]
    @@genres=[]
    #@@all=[]
    def initialize(name, artist, genre)
        @name= name
        @artist= artist
        @genre= genre
        @@count+=1
        @@artists<<@artist
        @@genres<<@genre
        #@@all<<self
        
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
    x={}
    @@genres.uniq.each do |genre|
        x[genre] = @@genres.count(genre)
    end
    x
    
end

def self.artist_count
    x={}
    @@artists.uniq do |artist|
        x[artist] = @@artists.count(artist)
    end
    x
end
    
end