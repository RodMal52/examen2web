class CreateDiscussions < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :name
      t.string :author
      t.text :description
      t.belongs_to :subforum, index: true

      t.timestamps
    end
  end
end
