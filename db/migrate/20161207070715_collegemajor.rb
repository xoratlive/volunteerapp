class Collegemajor < ActiveRecord::Migration
  def change
  	add_column :volunteer_opportunities, :chemistry, :text
  end
end
