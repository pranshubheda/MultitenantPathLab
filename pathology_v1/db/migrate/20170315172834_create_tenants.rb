class CreateTenants < ActiveRecord::Migration[5.0]
  def change
    create_table :tenants do |t|
      t.string :name
      t.string :subdomain
      t.string :image_url

      t.timestamps
    end
  end
end
