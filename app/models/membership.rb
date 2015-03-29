class Membership < ActiveRecord::Base

  belongs_to :person
  belongs_to :club

  def debug_string
    "#{person.debug_string}_in_#{club.debug_string}"
  end
end
