class CreateInstructors < ActiveRecord::Migration[5.0]
  def change
    create_table :instructors do |t|
      t.string :first_name
      t.string :middle_name
      t.string :lsat_name
      t.string :email

      t.timestamps
    end
  end
end
