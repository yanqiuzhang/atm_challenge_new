require 'date'

class Account 

    attr_accessor  :pin_code, :exp_date, :account_status, :balance, :owner
    STANDARD_VALIDITY_YRS = 5
        
    def initialize(attrs = {}) 
        @pin_code = rand(1000..9999).to_i 
        @exp_date = Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%y')
        @balance = 100
        @account_status = :active
        @owner = set_owner(attrs[:owner])
    end

    def deactivate
        @account_status = :deactivate
    end

    private
    def set_owner(obj)
        obj == nil ? missing_owner : @owner = obj
    end

    def missing_owner
        raise "An Account owner is required"
    end


end
