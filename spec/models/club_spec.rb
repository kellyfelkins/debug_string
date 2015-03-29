require 'rails_helper'

RSpec.describe Club, type: :model do
  describe "#members" do
    it 'knows about its members' do
      alice = Person.create!(:first_name => 'alice')
      blake = Person.create!(:first_name => 'blake')

      book_club = Club.create!(:name => 'book club')

      Membership.create!(:club => book_club, :person => alice)
      Membership.create!(:club => book_club, :person => blake)

      # expect(book_club.members).to eq([alice, blake, chuck])
      expect(book_club.members.map(&:debug_string)).to eq(%w|alice blake chuck|)
    end
  end
end
