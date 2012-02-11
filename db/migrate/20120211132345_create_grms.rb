class CreateGrms < ActiveRecord::Migration
  def change
    create_table :grms do |t|
      t.string :grm
      t.text :note

      t.timestamps
    end
  end
end
