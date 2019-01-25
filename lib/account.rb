require 'date'

class Account 

    attr_accessor  :pin_code, :exp_date, :account_status, :balance
        
    def initialize(attrs = {}) 
        @pin_code = rand(1000..9999).to_i 
        @exp_date = Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
        @balance = 100
        @account_status = :active

    end


    def deactivate
        
    end

end
