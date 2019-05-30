class CreateNews < ActiveRecord::Migration[5.2]
  def change
    create_table :news do |t|
      t.string :name
      t.string :course
      t.string :student_id
      t.integer :prelim_exam
      t.integer :midterm_exam
      t.integer :prefinal_exam
      t.integer :final_exam

      t.timestamps
    end
  end
end
