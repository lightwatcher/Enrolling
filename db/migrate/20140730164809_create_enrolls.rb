class CreateEnrolls < ActiveRecord::Migration
  def change
    create_table :enrolls do |t|
      t.integer :course_id
      t.integer :student_id

      t.timestamps
    end
  end
end
