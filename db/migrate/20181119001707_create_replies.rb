class CreateReplies < ActiveRecord::Migration[5.2]
  def change
    create_table :replies do |t|
      t.string :name
      t.string :date
      t.text :reply
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
