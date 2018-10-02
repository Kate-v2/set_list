

class Song < ActiveRecord::Base

  # When you need to interact with any ?/subset? of instances,
  # must use class methods
  def self.total_play_count
    # ActiveRecord gives us sum in this context
    # ActiveRecord is turning this method into the much longer SQL code
    sum(:play_count)
  end

end
