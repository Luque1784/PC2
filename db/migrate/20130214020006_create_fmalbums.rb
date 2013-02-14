class CreateFmalbums < ActiveRecord::Migration
  def change
    create_table :fmalbums do |t|
      t.string :name
      t.string :artist

      t.timestamps
    end
  end
end
