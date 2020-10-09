require_relative "./song.rb"
require 'pry'

class Artist

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def songs
        Song.all.select {|song| song.artist == self }
    end

    def add_song(song)
        song.artist = self     #=> song belongs to an artist.
    end

    def add_song_by_name(song_name)
        song = Song.new(song_name)   #=> generate the song with the given name.
        #self.collection << song     #=> adding it to the collection
        song.artist = self
    end


    def self.song_count
        Song.all.count
    end


end

# adele = Artist.new("Adele")
# adele.songs("Hello")