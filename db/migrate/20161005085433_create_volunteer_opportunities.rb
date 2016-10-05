class CreateVolunteerOpportunities < ActiveRecord::Migration
  def change
    create_table :volunteer_opportunities do |t|
      t.string :Organization
      t.string :Address
      t.string :Phone
      t.string :Website

      t.timestamps null: false
    end
  end
end
