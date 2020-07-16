# == Schema Information
#
# Table name: photos
#
#  id          :bigint           not null, primary key
#  image_key   :string(255)
#  large_url   :string(255)
#  medium_url  :string(255)
#  small_url   :string(255)
#  subject     :string(255)
#  type        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  products_id :bigint
#  users_id    :bigint
#
# Indexes
#
#  index_photos_on_products_id  (products_id)
#  index_photos_on_users_id     (users_id)
#
class Photo < ApplicationRecord
end
