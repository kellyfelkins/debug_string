class Person < ActiveRecord::Base
  has_many :memberships, :dependent => :destroy
  has_many :clubs, :through => :memberships

  def debug_string
    first_name # or [first_name, last_name].compact.join('_')
  end
end
