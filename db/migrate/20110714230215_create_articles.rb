class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.string :thumb
      t.string :screenshot
      t.string :rails
      t.string :php
      t.string :asp
      t.string :html5
      t.string :css3
      t.string :haml
      t.string :sass
      t.string :jquery
      t.string :mootools
      t.integer :position
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
