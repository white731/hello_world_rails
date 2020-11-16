class Page < ApplicationRecord
end

def info
    return "Hello my name is #{self.author} and here is the body: #{self.body}"
end
