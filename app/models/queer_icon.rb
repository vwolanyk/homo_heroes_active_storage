class QueerIcon < ApplicationRecord

  validates :name, presence: true
  validates :quote, length: { minimum: 2 }
  validates :img_url, uniqueness: true, presence: true
  validates :img_url, format: { with: /http:/,
    message: "must be valid url" }
end
