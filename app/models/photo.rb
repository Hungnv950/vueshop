# == Schema Information
#
# Table name: photos
#
#  id         :bigint           not null, primary key
#  image_key  :string(255)
#  large_url  :string(255)
#  medium_url :string(255)
#  small_url  :string(255)
#  subject    :string(255)
#  type       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  product_id :bigint
#  user_id    :bigint
#
# Indexes
#
#  index_photos_on_product_id  (product_id)
#  index_photos_on_user_id     (user_id)
#
class Photo < ApplicationRecord
end
