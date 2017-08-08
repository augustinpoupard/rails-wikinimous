class Article < ApplicationRecord
  validates :title, presence: true
  validates :texte, presence: true
end
