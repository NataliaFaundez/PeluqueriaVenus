class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tipo_usuario, :integer
  end
end
