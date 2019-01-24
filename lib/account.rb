require 'date'

class Account 

    attr_accessor  :pin_code
    
    def initialize(attrs = {}) 
        @pin_code = rand(1000..9999).to_s 
    end
end
