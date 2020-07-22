class Tweet < ApplicationRecord
  validates :text, presence: true
  #上記の行はカリキュラムにいきなり出てきたもの(マイページ実装のアソシエーション定義)
  belongs_to :user
  has_many :comments  # commentsテーブルとのアソシエーション

  def self.search(search)
    return Tweet.all unless search
    Tweet.where('text LIKE(?)', "%#{search}%")
  end
end
