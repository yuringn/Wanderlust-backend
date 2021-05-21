class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.string :title
      t.string :visit_date
      t.text :review
      t.text :pictures

      t.timestamps
    end
  end
end
