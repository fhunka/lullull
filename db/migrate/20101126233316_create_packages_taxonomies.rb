class CreatePackagesTaxonomies < ActiveRecord::Migration
  def self.up
    create_table :packages_taxonomies, :id => false do |t|
      t.integer :package_id
      t.integer :taxonomy_id

      t.timestamps
    end
  end

  def self.down
    drop_table :packages_taxonomies
  end
end
