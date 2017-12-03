require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'lib/caeser_cipher.rb'

get '/' do
  if params["text"] != nil && params["shift"] !=nil
  	enciphered = caeser_cipher(params["text"].to_s, params["shift"].to_i)
  end

  erb :index, :locals => { :enciphered => enciphered }

end