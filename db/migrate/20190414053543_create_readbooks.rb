class CreateReadbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :readbooks do |t|
      t.integer :title
      t.integer :author
      t.text :review
      t.text :image
      t.timestamps
    end
  end
end
