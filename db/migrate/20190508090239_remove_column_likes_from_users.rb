class RemoveColumnLikesFromUsers < ActiveRecord::Migration[5.2]
    def change
      remove_column(:users, :likes)
    end
end
