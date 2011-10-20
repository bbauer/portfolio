class AddImage02ToCaseStudies < ActiveRecord::Migration
  def self.up
    add_column :case_studies, :image02, :string
  end

  def self.down
    remove_column :case_studies, :image02
  end
end
