class AddCompanyLogoToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :company_logo, :string
    add_column :companies, :remote_company_logo, :string
  end
end
