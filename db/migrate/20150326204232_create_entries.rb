class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :author
      t.text :content
      t.belongs_to :discussion, index: true

      t.timestamps
    end
  end
end
