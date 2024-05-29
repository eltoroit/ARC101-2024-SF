@RestResource(urlMapping='/ELTOROit/*')
global with sharing class WS_Rest {
	@HttpGet
	global static String doGet() {
		RestRequest req = RestContext.request;
		// RestResponse res = RestContext.response;

		String url = req.requestURI;
		String urlMapping = '/ELTOROit/';
		Integer position = req.requestURI.indexOf(urlMapping);
		String output = url.mid(position, url.length());
		System.debug(output);

		// String filter = .substring(+1);
		// Account result = [SELECT Id, Name, Phone, Website FROM Account WHERE Id = :accountId];
		// return result;
		return 'Hello World';
	}

	@HttpPost
	global static String doPost(String name, String phone, String website) {
		Account account = new Account();
		account.Name = name;
		account.phone = phone;
		account.website = website;
		insert account;
		return account.Id;
	}
}
