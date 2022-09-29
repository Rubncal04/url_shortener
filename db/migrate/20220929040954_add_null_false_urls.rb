class AddNullFalseUrls < ActiveRecord::Migration[7.0]
  def change
    change_column_null :urls, :original_url, false
  end
end
