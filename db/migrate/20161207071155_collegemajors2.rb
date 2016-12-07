class Collegemajors2 < ActiveRecord::Migration
  def change
  	add_column :volunteer_opportunities, :biology_medical, :text
  	add_column :volunteer_opportunities, :social_sciences, :text
  	add_column :volunteer_opportunities, :engineering_physics, :text
  	add_column :volunteer_opportunities, :english_communication, :text
  	add_column :volunteer_opportunities, :journalism, :text
  	add_column :volunteer_opportunities, :marketing_business, :text
  	add_column :volunteer_opportunities, :hospitality, :text
  	add_column :volunteer_opportunities, :mathematics, :text
  	add_column :volunteer_opportunities, :art_music, :text
  end
end
