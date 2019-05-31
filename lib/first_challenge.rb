
def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

#alternate
contacts.each do |person, data|
  data.each do |attribute, value|
    if value.class == Array 
      value.map.with_index do |flavor, index|
        if flavor == "strawberry"
          value.delete_at(index)
        end
      end
    end
  end
end


    #your code here
#  contacts["Freddy Mercury"][:favorite_icecream_flavors] = contacts["Freddy Mercury"][:favorite_icecream_flavors].map.with_index do |flavor, index|
#      if flavor == "strawberry"
#        contacts["Freddy Mercury"][:favorite_icecream_flavors][index] == "raspberry"
#      else
#        puts "not strawberry, instead #{flavor}"
#      end
#  end
  #remember to return your newly altered contacts hash!
  contacts
end
