class Fmalbum < ActiveRecord::Base
	require 'lastfm'

	lastfm = Lastfm.new('no encuentro el codigo', 'no encuentro el codigo')
	token = lastfm.auth.get_token

	# open 'http://www.last.fm/api/auth/?api_key=xxxxxxxxxxx&token=xxxxxxxx' and grant the application

	lastfm.session = lastfm.auth.get_session(:token => token)['key']

end
