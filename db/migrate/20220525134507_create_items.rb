class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|

      t.integer :customer_id, null: false
      t.integer :envelope_id, null: false
      t.integer :paper_id, null: false
      t.integer :font_id, null: false
      t.integer :article_id, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
