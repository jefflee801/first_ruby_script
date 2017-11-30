people = []

puts "Hey! What's your name?"
name = gets.strip
puts "Hello, #{name}"
while true
  puts """
    1: Add Contact
    2: View Contacts
    3: Edit Contact
    4: Delete Contact
    5: Quit
    """
    user_choice = gets.strip.to_i
  case user_choice
  when 1
    puts 'Who do you want to add?'
    name = gets.strip
    people << name

  when 2
    puts ""
    people.each_with_index do |person, index|
      puts "#{index + 1} - #{person}"
    end

  when 3
    puts "Who do you want to edit?"
    edit_person = gets.strip
    index = people.index(edit_person)

    puts "What's the new info?"
    updated_person = gets.strip
    people[index] = updated_person

  when 4
    puts "Who do you want to delete?"
    deleted_person = gets.strip
    people.delete(deleted_person)

  when 5
    exit
  end
end
