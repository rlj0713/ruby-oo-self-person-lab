# your code goes here
class Person
    attr_reader :name, :happiness, :hygiene, :salary, :bank_account
    
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def bank_account=(balance)
        @bank_account = balance
    end

    def happiness=(new_happiness)
        @happiness = new_happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        else
            @happiness = happiness
        end
    end

    def hygiene=(new_hygiene)
        @hygiene = new_hygiene
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        else
            @hygiene = hygiene
        end
    end

    def happy?
        @happiness > 7 ? true : false
    end

    def clean?
        @hygiene > 7 ? true : false
    end

    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        return "♪ another one bites the dust ♫"
    end

    def call_friend(person)
        self.happiness += 3
        person.happiness += 3
        "Hi #{person.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness -= 2
            person.happiness -= 2
            'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            'blah blah sun blah rain'
        else
            'blah blah blah blah blah'
        end


    end
    
end