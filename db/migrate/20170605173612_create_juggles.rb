class CreateJuggles < ActiveRecord::Migration
  def change
    create_table :juggles do |t|
      t.string :trick
      t.decimal :difficulty

      t.timestamps null: false
    end
  end
end
