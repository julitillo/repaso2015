class List < ActiveRecord::Base
  belongs_to :version
  belongs_to :translation
end
