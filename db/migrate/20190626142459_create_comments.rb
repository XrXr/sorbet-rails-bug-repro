# typed: true
class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_comments do |t|
      t.string :commenter
      t.text :body
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
