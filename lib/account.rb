require 'date'

class Account 

    attr_accessor  :pin_code, :exp_date, :account_status, :balance
    STANDARD_VALIDITY_YRS = 5
        
    def initialize(attrs = {}) 
        @pin_code = rand(1000..9999).to_i 
        @exp_date = Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
        @account_status = :active
        @balance = 100
    end
        
    

end
