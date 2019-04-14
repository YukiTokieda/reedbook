class CreateReadbooks < ActiveRecord::Migration[5.2]
  def change
    create_table :readbooks do |t|
      t.string :title
      t.string :author
      t.text :review
      t.text :image
      t.timestamps
    end
  end
end
