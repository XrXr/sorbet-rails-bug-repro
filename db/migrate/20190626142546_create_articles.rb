# typed: true
class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :blog_articles do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
