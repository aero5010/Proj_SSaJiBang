class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.string :title
      t.date :date
      t.text :content
      t.integer :user_id

      resourcify
      include Authority::Abilities
      belongs_to :user  


      t.timestamps null: false
    end
  end
end
