class AddTextAndQuoteToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :text, :text
    add_reference :comments, :quote, foreign_key: true
  end
end
