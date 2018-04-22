class CreateChirps < ActiveRecord::Migration[5.1]
  def change
    create_table :chirps do |t|
      t.text :body
      t.integer :user_id

      t.timestamps
    end
  end
end
