class AddCountryCityLocationToArticle < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :country, :string
    add_column :articles, :city, :string
    add_column :articles, :location, :text
  end
end
