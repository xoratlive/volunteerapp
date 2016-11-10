class AddSkillsAndWhatToBringFields < ActiveRecord::Migration
  def change
  	add_column :volunteer_opportunities, :skill_needed, :text
  	add_column :volunteer_opportunities, :what_to_bring, :text
  end
end
