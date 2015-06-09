class Order < ActiveRecord::Base
  belongs_to :user

  has_many :order_items
  has_many :items, through: :order_items

  # after_save    :clear_cache
  # after_create  :clear_cache
  # after_destroy :clear_cache

  # include Clear

end
