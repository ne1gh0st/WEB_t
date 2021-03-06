from cgi import parse_qs

def simple_app(environ, start_response):
    status = '200 OK'
    response_headers = [('Content-type', 'text/plain')]
    start_response(status, response_headers)
    return [environ['QUERY_STRING'].replace('&', '\n')]
