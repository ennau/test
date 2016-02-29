from cgi import parse_qs, escape

def wsgi_application(environ, start_response):
	parameters = parse_qs(environ.get('QUERY_STRING', ''))
	if 'subject' in parameters:
		subject = escape(parameters['subject'][0])
	else:
		subject = 'Test' 
	status = '200 OK'
	headers = [
		('Content-Type', 'text/plain')
	]
	#body = 'Hello, world!'
	start_response(status, headers) 
	return [ '''HELLO %(subject)s 
	Hello %(subject)s!

''' % {'subject': subject}]



