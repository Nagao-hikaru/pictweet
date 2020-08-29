class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy

  after_validation :puts_sample

  def attributes
    {text: nil, image: nil }
  end

  private
  def puts_sample
    puts "sample"
  end

end
