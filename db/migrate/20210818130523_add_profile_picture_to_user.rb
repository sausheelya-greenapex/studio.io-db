class AddProfilePictureToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_picture, :string
    add_column :users, :bio, :string
    add_column :users, :website_url, :string
    add_column :users, :facebook_url, :string
    add_column :users, :twitter_handle, :string
    add_column :users, :instagram_handle, :string
    add_column :users, :streaming_url, :string


  end
end
