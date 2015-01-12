class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :name
      t.text :description
      t.references :language, index: true

      t.timestamps
    end
  end
end
