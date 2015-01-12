class CreateTranslationsVersions < ActiveRecord::Migration
  def change
    create_table :translations_versions do |t|
      t.references :version, index: true
      t.references :translation, index: true

      t.timestamps
    end
  end
end
