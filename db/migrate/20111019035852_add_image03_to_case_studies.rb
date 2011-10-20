class AddImage03ToCaseStudies < ActiveRecord::Migration
  def self.up
    add_column :case_studies, :image03, :string
  end

  def self.down
    remove_column :case_studies, :image03
  end
end
