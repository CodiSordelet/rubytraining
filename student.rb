class Student  

    #in order to avoid the redundancy of defining all of the getters and setters
    #you can use the attribute accessor method

    attr_accessor :first_name, :last_name, :email, :username, :password

    #if you want to make an attribute read-only, then use the attribute_reader method and to only write
    #the attribut_writer method.

    @first_name
    @last_name
    @email
    @username
    @password

  #stops the programmer from having to use setters for every instance variable    
    def initialize(firstname, lastname, username, email, password)
        @first_name = firstname
        @last_name = lastname
        @username = username
        @email = email
        @password = password
    end




    def to_s
        "The first Name if this student is #{@first_name}
        and the last name is #{@last_name}; This student has a username of #{@username} and an 
        email address of #{@email}"
    end
    
    # You don't need these when using the attribute accessor method.
    # you also dont need these when using the intializer
    # def first_name=(name)
    #     @first_name = name
    # end

    # def first_name
    #     @first_name
    # end

    # def last_name=(name)
    #     @last_name = name
    # end

    # def last_name
    #     @last_name
    # end

    # def email=(email_address)
    #     @email = email_address
    # end

    # def username=(username)
    #     @username = username
    # end

    # def password=(password)
    #     @password = password
    # end
end

#classes have a method named to_s, whenever you print an object without defining to_s.
#it will print the class and the location in memory.

codi = Student.new('Codi', 'Sordelet', 'CodesterRoadster', 'codisordelet@gmail.com', 'nobodyusesyahoo')


# Remember that object oriented programming uses encapsulation, meaning you need to use a method to set
# and access the properties/attributes of an object.
puts codi
