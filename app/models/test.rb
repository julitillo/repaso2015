class Test < ActiveRecord::Base
  belongs_to :user
  belongs_to :version	

  has_and_belongs_to_many :translationsversion

end
