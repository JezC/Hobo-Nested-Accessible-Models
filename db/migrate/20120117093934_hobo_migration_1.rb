class HoboMigration1 < ActiveRecord::Migration
  def self.up
    create_table :organisations do |t|
      t.string   :name
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :owner_id
    end
    add_index :organisations, [:owner_id]

    create_table :pages do |t|
      t.string   :path
      t.string   :title
      t.string   :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :website_id
    end
    add_index :pages, [:website_id]

    create_table :websites do |t|
      t.string   :url
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :organisation_id
    end
    add_index :websites, [:organisation_id]

    create_table :sections do |t|
      t.string   :name
      t.text     :description
      t.datetime :created_at
      t.datetime :updated_at
      t.integer  :page_id
    end
    add_index :sections, [:page_id]
  end

  def self.down
    drop_table :organisations
    drop_table :pages
    drop_table :websites
    drop_table :sections
  end
end
