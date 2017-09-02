class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.string :system
      t.string :genre
      t.date :start_date
      t.string :status

      t.timestamps
    end
  end
end
