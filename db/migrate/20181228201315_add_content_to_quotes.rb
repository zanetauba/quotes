class AddContentToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_column :quotes, :content, :text
  end
end
