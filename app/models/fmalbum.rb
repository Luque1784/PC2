class Fmalbum < ActiveRecord::Base
	require 'lastfm'

	lastfm = Lastfm.new('1207594aba255b1543e706b41a99abd7', '1501885a000b9fcf1ef4d03128b90bd9')
	token = lastfm.auth.get_token

	# open 'http://www.last.fm/api/auth/?api_key=xxxxxxxxxxx&token=xxxxxxxx' and grant the application

	lastfm.session = lastfm.auth.get_session(:token => token)['1207594aba255b1543e706b41a99abd7']

end
