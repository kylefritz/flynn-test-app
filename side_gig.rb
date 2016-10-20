loop do 
  open('myfile.out', 'a') do |f|
    f << "Hello, world. It's me again #{Time.new}.\n"
  end
  sleep 1
end
