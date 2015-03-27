class CreateSubforums < ActiveRecord::Migration
  def change
    create_table :subforums do |t|
      t.string :title

      t.timestamps
    end
  end
end
