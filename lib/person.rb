class Person
    attr_accessor :name

    def initialize(attrs = {})
        @name = set_name(attrs[:name])
    end 

    private 

    def set_name(ob)
        ob == nil ?  missing_name : @name = ob
    end

    def missing_name
        raise 'A name is required'
     end
end