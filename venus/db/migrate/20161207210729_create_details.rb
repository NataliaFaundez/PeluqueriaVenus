class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :service, index: true, foreign_key: true
      t.references :client, index: true, foreign_key: true
      t.date :fecha

      t.timestamps null: false
    end
  end
end
