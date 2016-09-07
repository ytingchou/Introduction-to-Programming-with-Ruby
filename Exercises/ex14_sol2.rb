# In exercise 12, we manually set the contacts hash values one by one.
# Now, programmatically loop or iterate over the contacts hash from
# exercise 12, and populate the associated data from the contact_data
# array. Hint: you will probably need to iterate over ([:email, :address,
# :phone]), and some helpful methods might be the Array shift and
# first methods.
contact_data = [ ["joe@email.com", "123 Main st.", "555-123-4567"],
                 ["sally@email.com", "404 Not Found Dr.", "123-234-3454"] ]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

personal_props = [:email, :address, :phone]

contacts.each_with_index do |(name, value), contact_index|
  personal_props.each_index do |prop_index|
    prop = personal_props[prop_index]
    value[prop] = contact_data[contact_index][prop_index]
  end
end

p contacts
