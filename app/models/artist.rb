class Artist < ActiveRecord::Base
  
  has_many :songs

  def name=(name)
    self.name = Song.find_or_create_by(name: name)
  end


end
