class CreateStudies < ActiveRecord::Migration
  def change
    create_table :studies do |t|
      t.string :title
      t.string :principal_investigator
      t.boolean :open, default: false

      t.timestamps null: false
    end
  end
end
