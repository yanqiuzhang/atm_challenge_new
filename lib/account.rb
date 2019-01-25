require 'date'

class Account 

    attr_accessor  :pin_code, :exp_date, :account_status, :balance, :owner
        
    def initialize(attrs = {}) 
        @pin_code = rand(1000..9999).to_i 
        @exp_date = Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
        @account_status = :active
        @balance = 100

    end


    def deactivate
            if (account.account_status == :active)
             return true 
        else
              return false       
            end 
    end

    private

    

end
