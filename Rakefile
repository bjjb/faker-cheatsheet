require 'rubygems'
require 'erb'

file "index.html" => "index.erb" do
  File.open('index.html', 'w') do |f|
    @content = `faker-cheatsheet|marked`
    puts(ERB.new(File.read('index.erb')).result(binding))
    f.puts(ERB.new(File.read('index.erb')).result(binding))
  end
end

desc "Build the website"
task build: "index.html"

task default: :build
