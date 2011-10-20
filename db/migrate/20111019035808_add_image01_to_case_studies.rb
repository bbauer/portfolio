class AddImage01ToCaseStudies < ActiveRecord::Migration
  def self.up
    add_column :case_studies, :image01, :string
  end

  def self.down
    remove_column :case_studies, :image01
  end
end
