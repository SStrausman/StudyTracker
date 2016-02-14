class CreateStudyLocations < ActiveRecord::Migration
  def change
    create_table :study_locations do |t|
    	t.belongs_to :site
    	t.belongs_to :study
    	
      t.timestamps null: false
    end
  end
end
