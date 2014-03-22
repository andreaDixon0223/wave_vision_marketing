class AddCompanyInfoToCompanies < ActiveRecord::Migration
  def change
    add_column :companies, :name, :string
    add_column :companies, :address, :string
    add_column :companies, :address2, :string
    add_column :companies, :city, :string
    add_column :companies, :st, :string
    add_column :companies, :zip, :string

    current_companies = Company.create!( :name => "Wave Vision Marketing", :address => "2028 N. Third Street", :city => "Flagstaff", :st => "AZ", :zip => "86004")
  end
end
