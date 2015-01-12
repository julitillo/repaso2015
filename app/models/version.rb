class Version < ActiveRecord::Base
  belongs_to :dictionary

  #has_many :translations, through: :lists
  has_and_belongs_to_many :translations
end
