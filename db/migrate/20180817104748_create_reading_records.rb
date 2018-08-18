class CreateReadingRecords < ActiveRecord::Migration
  def change
    create_table :reading_records do |t|
      t.string :title
      t.date :start_time
      t.date :end_time
      t.text :content
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
