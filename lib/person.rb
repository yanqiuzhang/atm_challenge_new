class Person
    
    attr_accessor :name

    def initialize(attrs = {})
        @name = missing_name(attrs[:name])
    end

    private

    
    def set_name(sb)
        sb == nil ? missing_owner : @name = sb
    end

    def missing_name
        raise "A name is required"
    end

end


