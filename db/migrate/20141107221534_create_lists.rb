class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.references :version, index: true
      t.references :translation, index: true

      t.timestamps
    end
  end
end
