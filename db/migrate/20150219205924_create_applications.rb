class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :name
      t.text :resume
      t.text :cover_letter
      t.references :job, index: true

      t.timestamps null: false
    end
    add_foreign_key :applications, :jobs
  end
end
