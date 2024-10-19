class Chore < ApplicationRecord
  has_many :completions, dependent: :destroy
end
