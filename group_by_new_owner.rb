def group_by_owners(files)
  return nil if files.nil? || files.empty?

  owners = Hash.new { |hash, key| hash[key] = [] }

  files.each do |filename, owner|
    owners[owner] << filename
  end

  owners
end

files = {
  'Input.txt' => 'Randy',
  'Code.py' => 'Stan',
  'Output.txt' => 'Randy'
}

puts group_by_owners(files)

# https://www.testdome.com/tests/ruby-on-rails-online-test/66