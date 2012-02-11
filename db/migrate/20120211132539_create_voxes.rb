class CreateVoxes < ActiveRecord::Migration
  def change
    create_table :voxes do |t|
      t.string :german
      t.string :wylie
      t.string :grm
      t.string :cat
      t.text :note
      t.integer :temp1
      t.integer :length
      t.string :src

      t.timestamps
    end
  end
end
