class Quote < ApplicationRecord
    validates :content, length: { in: 10..300 }
end
