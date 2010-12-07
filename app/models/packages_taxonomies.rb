class PackagesTaxonomies < ActiveRecord::Base
  belongs_to :package
  belongs_to :taxonomy
end
