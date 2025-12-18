#!/usr/bin/env python3
from http.server import HTTPServer, BaseHTTPRequestHandler

class HelloHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        message = """
        <html>
        <head><title>Docker Homework</title></head>
        <body>
        <h1>Hello from Docker Homework!</h1>
        <p>This is a simple containerized Python web server.</p>
        <p>Course: DevOps with Docker</p>
        </body>
        </html>
        """
        self.wfile.write(message.encode())

def run(server_class=HTTPServer, handler_class=HelloHandler, port=8000):
    server_address = ('', port)
    httpd = server_class(server_address, handler_class)
    print(f'Starting server on port {port}...')
    httpd.serve_forever()

if __name__ == '__main__':
    run()
