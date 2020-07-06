# ---------------------------------
#  In case update table if u want to update
#     in the migrations of this table
#     use rake:migrate VERSION=num_mig
#        from rake:migrate:status
#           and command migrate
#             after updating
# --------------------------------



class UpdatePostsTableAddCulumn < ActiveRecord::Migration[6.0]
  def up
    add_column("posts", 'category', :string)
  end

  def down
    remove_column("posts", "category")
  end
end
