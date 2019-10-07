class Field < ApplicationRecord
    def plus_total_num
        self.total_num += 1
        return self
    end
end
