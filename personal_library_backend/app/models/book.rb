class Book < ApplicationRecord
    enum status: { to_read: 0, reading: 1, finished: 2 }
    validates :title, presence: true
    validates :author, presence: true
    validates :status, inclusion: { in: statuses.keys }
    validates :rating, numericality: { only_integer: true, allow_nil: true }, inclusion: { in: 1..5, allow_nil: true }
end
