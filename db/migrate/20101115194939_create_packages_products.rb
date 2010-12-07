class CreatePackagesProducts < ActiveRecord::Migration
  def self.up
    create_table :packages_products, :id => false do |t|
      t.integer :package_id
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :packages_products
  end
end
