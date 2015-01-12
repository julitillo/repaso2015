class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.references :user, index: true
      t.string :name
      t.references :version, index: true
      t.datetime :date_start
      t.datetime :date_end

      t.timestamps
    end
  end
end
