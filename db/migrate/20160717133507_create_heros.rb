class CreateHeros < ActiveRecord::Migration[5.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.text :about
      t.integer :ip

      t.timestamps
    end
  end
end
