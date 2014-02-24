def folderize
  `rspec --init`
  `bundle init`
  add_require_all
  `bundle`
  `mkdir bin/ config/ lib/ spec/fixtures/ lib/concerns`
  `touch bin/generate README.md RAKEFILE`

  add_environment
  rspec_add
end

def add_require_all
  File.open('GEMFILE', 'a') {|f| f.write("gem 'require_all'") }
end

def add_environment
  File.open("config/envrionment.rb", "w") {|f| f.write(environment_input)}
end

def environment_input
  "require 'require_all'

  require_all 'lib'"
end

def rspec_add
  original_file = './spec/spec_helper.rb'
  new_file = original_file + '.new'

  File.open(new_file, 'w') do |fo|
    fo.puts "require_relative '../config/environment'"
    File.foreach(original_file) do |li|
      fo.puts li
    end
  end

  File.rename(original_file, original_file + '.old')
  File.rename(new_file, original_file)
  File.delete("./spec/spec_helper.rb.old")
end

folderize