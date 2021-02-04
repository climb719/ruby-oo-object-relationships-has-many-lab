class Song
    attr_accessor :name, :artist # has a name - can write and read it, :artist - belongs to an artist  - make accessable to artist property
    @@all = [] # is a class variable set to an array, so can form a collection 

    def initialize(name) # is initialized with an argument of a name
        @name = name 
        @@all << self # pushes new instances (self) into a class variable called @@all upon initialization
    end 

    def self.all # is a class method
        @@all #  returns an array of all song instances that have been created
    end 

    def artist_name
        artist.name if artist
    end 
end
