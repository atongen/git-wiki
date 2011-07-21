require 'rubygems'
require 'sinatra'

ENV['WIKI_HOME'] = File.expand_path(File.dirname(__FILE__))
require ENV['WIKI_HOME'] + '/git-wiki.rb'

run Sinatra::Application
