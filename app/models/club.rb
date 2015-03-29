class Club < ActiveRecord::Base

  has_many :memberships, :dependent => :destroy
  has_many :members, :through => :memberships, :source => :person

  def debug_string
    name.gsub(/\W/, '_')
  end
end
