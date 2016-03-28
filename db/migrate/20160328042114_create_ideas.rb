class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :content
      t.references :challenge, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
