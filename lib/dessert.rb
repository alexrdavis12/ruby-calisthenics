class Dessert
    def initialize(name, calories)
        @name = name
        @cals = calories
    end
    
    def healthy?
        if @cals < 200
            return true
        else
            return false
        end
    end
    
    def delicious?
        return true
    end
    
    def calories
        return @cals
    end
    
    def calories=(cal)
        @cals = cal
    end
    
    def name
        return @name
    end
    
    def name=(name)
        @name=name
    end
end

class JellyBean < Dessert
    def initialize(flavor)
        @flavor = flavor
        @name = @flavor + ' jelly bean'
        @cals = 5
    end
    
    def delicious?
        if @flavor == 'licorice'
            return false
        else 
            return true
        end
    end
    
    def flavor
        @flavor = flavor
    end
    
    def flavor=(flav)
        @flavor = flav
    end
end