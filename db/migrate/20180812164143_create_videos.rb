class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :name
      t.string :date
      t.string :url

      t.timestamps
    end
  end
end
