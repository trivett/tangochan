class AddNameNativeLanguageLearningLanguageCityCountryWordsPracticedAndMinutesPracticedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :native_language, :string
    add_column :users, :learning_language, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :words_practiced, :integer
    add_column :users, :minutes_practiced, :integer
  end
end
