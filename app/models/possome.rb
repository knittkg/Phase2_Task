class Possome < ApplicationRecord
  validates :body, length: {in: 1..140}
end
