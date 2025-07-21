module Findable 
  @@collection = []

  def initialize
    @@collection << self
  end
  
  def find_by_name(name)
    @@collection.detect{|a| a.name == name}
  end

  def self.all
    @@collection
  end
end
