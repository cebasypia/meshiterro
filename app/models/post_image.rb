# frozen_string_literal: true

class PostImage < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
end
