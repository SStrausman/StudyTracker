class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
    	t.references :study
    	t.references :participant
    	t.references :site
    	
      t.timestamps null: false
    end
  end
end
