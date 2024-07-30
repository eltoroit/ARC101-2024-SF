Account acc;
List<Account> accs;
/*
accs = [SELECT Id, Name, Site FROM Account WHERE Name = 'ELTOROit' AND Site LIKE 'Many Records%' ORDER BY Site ASC];
delete accs;
*/
accs = new List<Account>();
Integer start = 0;
Integer count = 1000;
for (Integer i = start; i < start + count; i++) {
	accs.add(new Account(Name = 'ELTOROit', Site = 'Many Records: ' + String.valueOf(i).leftPad(5, '0')));
}
insert accs;
System.debug('Count: ' + accs.size());
acc = accs[0];
System.debug('Request Min: ' + acc.Id + ': ' + acc.Name + ' (' + acc.Site + ')');
acc = accs[accs.size() - 1];
System.debug('Request Max: ' + acc.Id + ': ' + acc.Name + ' (' + acc.Site + ')');
/*
for (Account acc : accs) {
	System.debug(acc.Id + ': ' + acc.Name + ' (' + acc.Site + ')');
}
*/
System.debug(
	[
		SELECT Name, min(Site) myFirst, max(Site) myLast
		FROM Account
		WHERE Name = 'ELTOROit' AND Site LIKE 'Many Records%'
		GROUP BY Name
	]
);
