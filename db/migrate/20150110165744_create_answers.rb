class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :translation, index: true
      t.string :ans

      t.timestamps
    end
  end
end
