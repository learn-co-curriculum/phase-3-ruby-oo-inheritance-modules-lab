module Memorable
  module ClassMethods
    def count
      all.count
    end

    def reset_all
      all.clear
    end
  end

  module InstanceMethods
    def initialize
      self.class.all << self
    end
  end

end
