class CreateVersions < ActiveRecord::Migration
  def change
    create_table :versions do |t|
      t.integer :number
      t.integer :status
      t.references :dictionary, index: true

      t.timestamps
    end
  end
end
