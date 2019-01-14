class Show < ActiveRecord::Base

  belongs_to :network
  has_many :characters  #add show_id to character table
  has_many :genre

end
