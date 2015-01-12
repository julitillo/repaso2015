class Translation < ActiveRecord::Base
  belongs_to :aception_own, :class_name => "Aception"
  belongs_to :aception_for, :class_name => "Aception"

  #has_many :versions, through: :lists
  has_and_belongs_to_many :versions

end
