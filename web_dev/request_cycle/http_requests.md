# HTTP Requests

## Common HTTP Status Codes

  + 200 OK
  + 300 Multiple Choices
  + 301 Moved Permanently
  + 302 Found
  + 304 Not Modified
  + 307 Temporary Redirect
  + 400 Bad Request
  + 401 Unauthorized
  + 403 Forbidden
  + 404 Not Found
  + 410 Gone
  + 500 Internal Server Error
  + 501 Not Implemented
  + 503 Service Unavailable
  + 550 Permission denied

## GET and POST requests

A GET request solicits data from a specified resource and should only be used to retrieve data. They can be cached or bookmarked, and remain in the browser history. HTTP/1.1 specification (RFC 2616) section 9 [Method Definitions](https://www.w3.org/Protocols/rfc2616/rfc2616-sec9.html#sec9) provides at least one practical reason for why GET should only be used to retrieve data:

  "Authors of services which use the HTTP protocol SHOULD NOT use GET based forms for the submission of sensitive data, because this will cause this data to be encoded in the Request-URI. Many existing servers, proxies, and user agents will log the request URI in some place where it might be visible to third parties."

A POST request carries its information within the body of the request, making it more secure. It is often used for form submissions and to add entities to a database. For example, a form with a username field and a password field. On submission, a POST request might be sent that would then insert that user's information into the database.

## Cookies

An HTTP cookie is a small piece of data sent from a website and stored on the user's computer by the user's web browser while the user is browsing. Cookies were designed to be a reliable mechanism for websites to remember stateful information (such as items added in the shopping cart in an online store) or to record the user's browsing activity (including clicking particular buttons, logging in, or recording which pages were visited in the past). They can also be used to remember arbitrary pieces of information that the user previously entered into form fields such as names, addresses, passwords, and credit card numbers.