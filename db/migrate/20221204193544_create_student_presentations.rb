class CreateStudentPresentations < ActiveRecord::Migration[7.0]
  def change
    create_table :student_presentations do |t|
      t.timestamps
    end
    add_reference :student_presentations, :student, foreign_key: true
    add_reference :student_presentations, :presentation, foreign_key: true
  end
end
