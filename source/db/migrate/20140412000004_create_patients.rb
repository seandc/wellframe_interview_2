class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first
      t.string :last
      t.decimal :medication_rate
      t.decimal :exercise_rate
      t.integer :happiness_score

      t.timestamps
    end
  end
end
