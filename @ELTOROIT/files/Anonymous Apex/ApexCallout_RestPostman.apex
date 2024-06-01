Http http = new Http();
HttpRequest request = new HttpRequest();
// request.setEndpoint('callout:PostmanServerFast/ping');
request.setEndpoint('callout:PostmanServerSlow/ping');
request.setTimeout(20000);
request.setMethod('GET');
HttpResponse response = http.send(request);
System.debug(response.getStatusCode());
System.debug(response.getBody());
