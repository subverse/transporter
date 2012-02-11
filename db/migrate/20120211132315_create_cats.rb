class CreateCats < ActiveRecord::Migration
  def change
    create_table :cats do |t|
      t.string :cat
      t.text :note

      t.timestamps
    end
  end
end
