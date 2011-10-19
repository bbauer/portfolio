class CreateCaseStudies < ActiveRecord::Migration
  def self.up
    create_table :case_studies do |t|
      t.text :content
      t.string :name
      t.string :slug

      t.timestamps
    end
    add_index :case_studies, :slug, :unique => true
  end

  def self.down
    drop_table :case_studies
  end
end
