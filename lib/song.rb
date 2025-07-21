require 'pry'

class Song
  extend Memorable::ClassMethods
  include Memorable::InstanceMethods

  extend Findable
  include Paramable

  attr_accessor :name, :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end
end
