class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :title
      t.string :name
      t.text :text

      t.timestamps
    end
  end
end
