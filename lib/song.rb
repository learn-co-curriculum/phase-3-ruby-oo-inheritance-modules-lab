require_relative 'concerns/memorable'
require_relative 'concerns/findable'
require_relative 'concerns/paramable'
require 'pry'

class Song
    extend Memorable, Findable
    include Paramable

  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  def artist=(artist)
    @artist = artist
  end

end
