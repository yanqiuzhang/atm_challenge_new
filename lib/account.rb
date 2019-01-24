require 'date'

class Account 
    attr_accessor  :pin_code, :exp_date , :account_status, :balance
    
    def initialize(attrs = {}) 
        @pin_code = rand(1000..9999).to_i
        @exp_date = '%d/%m'
        @account_status = :active
        @balance = 100

    end
end
