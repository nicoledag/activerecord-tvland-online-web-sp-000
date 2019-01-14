class Actor < ActiveRecord::Base

  has_many :characters      #add actor_id to character table
  has_many :shows,through: :characters


  def full_name
    "#{self.first_name} " + "#{self.last_name}"
  end

  def list_roles
    binding.pry
    self.characters.collect do |char|
      "#{char.name} - #{char.show.name}"
    end
  end


end
