class RemovePassCloumn < ActiveRecord::Migration
  def change
  	remove_column :users,:passsword_digest, :string
  end
end
