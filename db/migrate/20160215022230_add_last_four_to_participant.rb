class AddLastFourToParticipant < ActiveRecord::Migration
  def change
  	add_column :participants, :last_four, :string
  end
end
