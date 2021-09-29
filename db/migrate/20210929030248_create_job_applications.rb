class CreateJobApplications < ActiveRecord::Migration[6.1]
  def change
    create_table :job_applications do |t|
      t.references :photography_job, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :previous_employer

      t.timestamps
    end
  end
end
