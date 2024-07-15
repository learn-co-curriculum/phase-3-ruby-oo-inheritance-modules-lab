require 'pry'

class Artist
  include Paramble, Memorable::InstanceMethods
  extend Memorable::ClassMethods, Findable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end


  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
