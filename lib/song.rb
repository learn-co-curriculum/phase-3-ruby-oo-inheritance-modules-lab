require 'pry'

class Song
  include Paramble, Memorable::InstanceMethods
  extend Memorable::ClassMethods, Findable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end
end
