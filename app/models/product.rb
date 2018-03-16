# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  active      :boolean          default(TRUE), not null
#  url         :text
#  quantity    :integer          default(0), not null
#  amount      :decimal(, )      default(0.0), not null
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_products_on_category_id  (category_id)
#
# Foreign Keys
#
#  fk_rails_...  (category_id => categories.id)
#

class Product < ActiveRecord::Base
  belongs_to :category
end
