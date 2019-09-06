class Xshare < ApplicationRecord
  validates :text, presence: true, length: { maximum: 300, minimum: 3 }
  validates :name, presence: true, length: { maximum: 50, minimum: 3 }
end
