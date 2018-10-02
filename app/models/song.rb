

class Song < ActiveRecord::Base

  # This prevents us from creating a song if there's no title
  #   validates :title,      presence: true
  #   validates :length,     presence: true
  #   validates :play_count, presence: true
  # --same:
  validates_presence_of :title, :length, :play_count


  # --- Can also do this ---
  # This allows you to chain other types of validations
  #   validates :play_count, presence: true
  # can also do this, but cannot chain
  #   validates_presence_of :title



  # When you need to interact with any ?/subset? of instances,
  # must use class methods
  def self.total_play_count
    # ActiveRecord gives us sum in this context
    # ActiveRecord is turning this method into the much longer SQL code
    sum(:play_count)
  end

  def self.average_play_count
    average(:play_count)
  end

end
