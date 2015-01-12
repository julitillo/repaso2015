class AddRepetitionsToTest < ActiveRecord::Migration
  def change
    add_column :tests, :repetitions, :integer
  end
end
