class CreateClips < ActiveRecord::Migration
  def change
    create_table :clips do |t|
      t.string :speed
      t.string :date_string
      t.string :time
      t.string :location
      t.string :video_url

      t.timestamps
    end
  end
end
