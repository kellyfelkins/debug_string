class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :club_id
      t.integer :person_id

      t.timestamps null: false
    end
  end
end
