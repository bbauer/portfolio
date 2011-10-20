class AddWireframeToCaseStudies < ActiveRecord::Migration
  def self.up
    add_column :case_studies, :wireframe, :string
  end

  def self.down
    remove_column :case_studies, :wireframe
  end
end
