class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.date :date
      t.text :title
      t.text :text
      t.timestamps
    end
  end
end
