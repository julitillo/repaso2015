class CreateDictionaries < ActiveRecord::Migration
  def change
    create_table :dictionaries do |t|
      t.string :title
      t.integer :difficulty
      t.integer :access
      t.references :user, index: true
      t.references :language_own, index: true
      t.references :language_for, index: true

      t.timestamps
    end
  end
end
