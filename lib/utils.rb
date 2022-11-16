module Utils
    def isNumeric(number)
        !!Float(number) rescue false
    end
end
