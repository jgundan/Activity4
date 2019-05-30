class CreateIdNums < ActiveRecord::Migration[5.2]
  def change
    create_table :id_nums do |t|
      t.string :name
      t.string :course
      t.string :id_num
      t.string :average_grade

      t.timestamps
    end
  end
end
