class CreateTranslations < ActiveRecord::Migration
  def change
    create_table :translations do |t|
      t.references :aception_own, index: true
      t.references :aception_for, index: true

      t.timestamps
    end
  end
end
