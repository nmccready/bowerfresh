describe 'bowerfresh index.rb' do
  before do
    puts `bower install`
    expect( File.exist? 'bower_components/ns2/bower.json').to be
  end
  
  it "should remove dependency" do
    `'./bin/bowerfreshrb'`
    expect(File.exist? 'bower_components/ns2/bower.json').to_not be
  end

  it "should remove dependency from cache" do
    `'./bin/bowerfreshrb'`
    out = `bower cache list | grep ns2'1`
    puts out
    expect(out).to eql('')
  end
end