KARMA_DIR = "karma_user.txt"



def write_cache(contents)
  File.open("message_cache","a") do |file|
    file.puts "#{contents}"
  end
end

def settings_number()
  File.readlines("numfile.txt").each do |file|
    number = file
    number = number.to_i
    return number
  end
end

def karma_needed(amount_of_players)
  if amount_of_players < 5 && amount_of_players != 1
    karma_required = amount_of_players - 1
    return karma_required
  elsif amount_of_players >= 5
    return 5
  else
  end
end

def write_karma_needed(karma_needed)
  File.open("settings.txt","w") do |file|
    file.puts "#{karma_needed}"
  end
end

def karma_needed_update(no_players)
  karma = karma_needed(no_players)
  write_karma_needed(karma)
end

def read_karma_needed()
  File.readlines("settings.txt").each do |file|
    karma_needed = file
    return karma_needed.to_i
  end
end


 def array_chomp(array)
   new_array = []
   array.each do |line|
     linenew = line.chomp
     new_array.push linenew
   end
    return new_array
end

#526029094564003841

def feature_announcments_message(message_contents,desired_channel,karma_amount,user)
  message = "**✨Featured✨**\n   `#{message_contents}`\n   Sent by **#{user}**\n   **#{karma_amount}** Upvotes"
  return message
end

def file_index(file_name,include)
  lines = File.readlines(file_name)
  lines.each do |line|
    if line.include? include
      index = lines.index(line)
    end
    return index,lines
  end
end

def settings(servername,karma_amount,message,channelfeatured)
  file_attr = file_index("settings.txt","#{servername}")
  puts file_attr
  index = file_attr[0]
  lines = file_attr[1]
  setting_string = "#{servername},#{karma_amount},#{message},#{channelfeatured}"
  lines[index] = setting_string
  File.open("settings.txt","w") {|file| file.puts lines}
  end

settings(nil,nil,nil,nil)








def change_channel(new_channel)

end
