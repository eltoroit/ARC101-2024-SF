delete [SELECT Id FROM Opportunity WHERE AccountId IN (SELECT Id FROM Account WHERE Name LIKE 'ELTOROit%')];
delete [SELECT Id FROM Contact WHERE AccountId IN (SELECT Id FROM Account WHERE Name LIKE 'ELTOROit%')];
delete [SELECT Id FROM Account WHERE Name LIKE 'ELTOROit%'];
System.debug('Done');
