class CreateTenants < ActiveRecord::Migration[6.1]
  def change
    create_table :tenants do |t|
      t.references :tenant, foreign_key: true
      t.string :name

      t.timestamps
    end
    add_index :tenants, :name
  end
end
