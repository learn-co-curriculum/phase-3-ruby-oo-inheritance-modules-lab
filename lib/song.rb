require_relative './concerns/memorable'
require_relative './concerns/findable'
require_relative './concerns/paramable'
require 'pry'

class Song
  extend Memorable::ClassMethods
  extend Findable::ClassMethods
  include Paramable::InstanceMethods
  include Memorable::InstanceMethods

  attr_accessor :name
  attr_reader :artist

  def initialize
    self.class.all << self
  end

  def artist=(artist)
    @artist = artist
  end
end
