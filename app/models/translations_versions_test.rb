class TranslationsVersionsTest < ActiveRecord::Base
  belongs_to :translations_versions
  belongs_to :test
end
