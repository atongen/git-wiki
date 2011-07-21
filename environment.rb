require 'rubygems'
require ENV['WIKI_HOME'] + '/extensions'
require ENV['WIKI_HOME'] + '/page'

%w(git redcloth rubypants).each do |gem| 
  require_gem_with_feedback gem
end

GIT_REPO = ENV['WIKI_HOME'] + '/wiki'
HOMEPAGE = 'home'

unless File.exists?(GIT_REPO) && File.directory?(GIT_REPO)
  puts "Initializing repository in #{GIT_REPO}..."
  Git.init(GIT_REPO)
end

$repo = Git.open(GIT_REPO)
