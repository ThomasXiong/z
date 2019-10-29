class CreateExams < ActiveRecord::Migration[5.2]
  def change
    create_table :exams do |t|
      t.string :name
      t.string :student_number

      t.timestamps
    end
  end
end
