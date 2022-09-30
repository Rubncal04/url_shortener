class Url < ApplicationRecord
  has_many :visits

  validates :original_url, presence: true, url: true

  after_validation :generate_short_url, on: :create

  private

  def generate_short_url
    loop do
      url_str = SecureRandom.alphanumeric(7)
      self.short_url = url_str

      break unless Url.exists?(short_url: url_str)
    end
  end
end
