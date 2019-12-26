class RemoveRemeberDigestFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :remeber_digest, :string
  end
end
