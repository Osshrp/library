class Book < ApplicationRecord
  belongs_to :reader
  belongs_to :card
end
