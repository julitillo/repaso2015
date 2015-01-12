class CreateTranslationsVersionsTests < ActiveRecord::Migration
  def change
    create_table :translations_versions_tests do |t|
      t.references :translations_versions, index: true
      t.references :test, index: true

      t.timestamps
    end
  end
end
