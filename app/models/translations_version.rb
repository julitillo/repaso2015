class TranslationsVersion < ActiveRecord::Base
  belongs_to :version
  belongs_to :translation

  has_and_belongs_to_many :test
end
