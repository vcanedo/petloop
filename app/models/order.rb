class Order < ApplicationRecord
  belongs_to :collar
  validates :address, :deadline, presence: true
  validates :deadline, date: { after: Date.today }
end
