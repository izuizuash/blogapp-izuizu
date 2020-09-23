class Article < ApplicationRecord
  # これがないと保存しないよ
  validates :title, presence: true
  validates :content, presence: true
end
