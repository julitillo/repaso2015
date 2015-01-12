class Dictionary < ActiveRecord::Base
  belongs_to :user
  belongs_to :language_own, :class_name => "Language"
  belongs_to :language_for, :class_name => "Language"
  has_many :aceptions, through: :words
end
