class RemoveRemberDigestFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :rember_digest, :string
  end
end
