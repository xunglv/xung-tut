class AddNoteToWords < ActiveRecord::Migration
  def self.up
    add_column :words, :note, :string
  end

  def self.down
    remove_column :words, :note
  end
end
