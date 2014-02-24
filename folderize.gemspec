Gem::Specification.new do |s|
  s.name        = 'folderize'
  s.version     = '0.0.2'
  s.executables << 'folderize'
  s.date        = '2014-02-12'
  s.summary     = "Easily Create a Ruby File Structure"
  s.description = "Create a Ruby File structure with a single command including bundler and rspec"
  s.authors     = ["Daniel Spector"]
  s.email       = 'danielyspector@gmail.com'
  s.files       = ["lib/folderize.rb"]
  s.homepage    =
    'http://rubygems.org/gems/folderize'
  s.license       = 'MIT'
  s.add_runtime_dependency "require_all",
    [">=0"]

end