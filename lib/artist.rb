class Artist
    #has a attr_accessor for name - getter and setter 
    attr_accessor :name 
    @@all = []

    #is initialized with a name
    def initialize(name) # each artist instance is triggered automatically to have a name (argument passed in to the method)
        @name = name 
        @@all << self # has many songs, expect songs to be an array - set up as empty array here so able to store a list of songs 
    end

    def self.all
        @@all # access/reads all the songs 
    end

    def songs
        #retrieve all the songs associated with an artist
        # incorporate this directly into our Artist class, replacing the implementation of the #songs method so that it selects instead of returning the @songs instance variable
        Song.all.select {|song| song.artist == self}
    end

    def add_song(song) #takes in an argument of a song 
        song.artist = self # associates that song with the artist by telling the song that it belongs to that artist
        # self keyword refers to artist on which calling this method. Call the #artist= method on song instance that is passed in as an argument, set it equal to self––the artist
    end

    def add_song_by_name(name) #takes in an argument of a song name
        song = Song.new(name) # creates a new song with it 
        song.artist = self # associates the song and artist
    end

    def self.song_count
        # is a class method that returns the total number of songs associated to all existing artists
        Song.all.count
    end 
end