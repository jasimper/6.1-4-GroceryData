class AddAuthFieldsToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :email, :string, null: false
    add_column :customers, :password_digest, :string
  end
end
