class Book < ApplicationRecord

    def summary
        "#{self.title} - #{self.author} (#{self.genre})"
    end
end