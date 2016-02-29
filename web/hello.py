from cgi import parse_qs

def wsgi_app(environ, start_response):
    start_response('200 OK', [('Content-Type', 'text/plain')])
    query = environ.get('QUERY_STRING', '')
    for param in querys.split('&'):
        yield param + '\n'
        
        





