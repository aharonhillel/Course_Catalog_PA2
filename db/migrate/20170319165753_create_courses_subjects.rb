class CreateCoursesSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :courses_subjects do |t|
      t.integer :course_id
      t.integer :subject_id

      t.timestamps
    end
  end
end
