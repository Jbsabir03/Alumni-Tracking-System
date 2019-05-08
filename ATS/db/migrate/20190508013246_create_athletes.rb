class CreateAthletes < ActiveRecord::Migration
  def change
    create_table :athletes do |t|
      t.boolean :baseball
      t.boolean :basketball
      t.boolean :cheerleader
      t.boolean :football
      t.boolean :golf
      t.boolean :soccer
      t.boolean :softball
      t.boolean :volleyball

      t.timestamps null: false
    end
		
		add_index :athletes, :student_id if !index_exists?(:student_tuitions, :student_id)
    add_foreign_key :athletes, :students
	
  end
  
  def down
    remove_index :athletes, :student_id
    remove_foreign_key :athletes, :students
  end

end
