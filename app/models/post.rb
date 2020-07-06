class Post < ApplicationRecord
  validates :title_post, presence: true ,
   length: {maximum:25, minimum:3}
end
