class CreateGenres < ActiveRecord::Migration[5.1]
  def change
    delete_table :genres do |t|
      #primary key of :id is created for us!
      t.string :name
    end
  end
end
