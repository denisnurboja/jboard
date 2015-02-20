class CreateJobApplications < ActiveRecord::Migration
  def change
    create_table :job_applications do |t|
      t.string :name
      t.text :resume
      t.text :cover_letter
      t.references :job, index: true

      t.timestamps null: false
    end
    add_foreign_key :job_applications, :jobs
  end
end
