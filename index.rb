require 'json'

str = File.read 'bower.json'
# puts str
bowerObj = JSON.parse(str)

commands = ["bower uninstall","bower cache clean"]
bowerObj["sofresh"].each do |dep|
  commands.each do |cmd|
    run="#{cmd} #{dep}"
    puts `#{run}`
  end
end