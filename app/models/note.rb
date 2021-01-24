class Note < ActiveRecord::Base

  belongs_to :song

  def content=(content)
    self.content = Song.find_or_create_by(content: content)
  end

end
