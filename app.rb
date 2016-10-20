require 'sinatra'

get '/' do
  files = `ls `
  
  "GREAT_VAR=#{ENV['GREAT_VAR']}
  files=
  #{files}
  
  myfile.out=
  #{`tail myfile.out`}
  "
end
