# manejo de excepciones en ruby

def convert_number(s)
    begin
        Integer(s)
    rescue ArgumentError
        nil
    end
end