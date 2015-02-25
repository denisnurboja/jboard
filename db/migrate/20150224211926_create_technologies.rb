class CreateTechnologies < ActiveRecord::Migration
  def change
    create_table :technologies do |t|
      t.string :name
      t.references :company, index: true
      t.references :job_application, index: true

      t.timestamps null: false
    end
    add_foreign_key :technologies, :companies
    add_foreign_key :technologies, :job_applications
  end
end
