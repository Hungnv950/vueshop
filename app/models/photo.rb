# == Schema Information
#
# Table name: photos
#
#  id          :integer          not null, primary key
#  image_key   :string
#  large_url   :string
#  medium_url  :string
#  small_url   :string
#  subject     :string
#  type        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  products_id :integer
#  users_id    :integer
#
# Indexes
#
#  index_photos_on_products_id  (products_id)
#  index_photos_on_users_id     (users_id)
#
class Photo < ApplicationRecord
end
