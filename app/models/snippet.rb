class Snippet < ApplicationRecord
  belongs_to :user
  default_scope { order(created_at: :desc) }
  validates :title, :content, presence: :true
end
