class AddOldpageToCaseStudies < ActiveRecord::Migration
  def self.up
    add_column :case_studies, :oldpage, :string
  end

  def self.down
    remove_column :case_studies, :oldpage
  end
end
