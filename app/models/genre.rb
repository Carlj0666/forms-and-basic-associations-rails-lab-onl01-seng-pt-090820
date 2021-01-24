class Genre < ActiveRecord::Base

  has_many :songs

  def name=(name)
    self.name = Genre.find_or_create_by(name: name)
  end

end
