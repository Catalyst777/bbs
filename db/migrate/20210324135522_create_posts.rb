class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :contents
      t.string :date
      t.string :name
      t.string :update

      t.timestamps
    end
  end
end
