insert new PushTopic(
	ApiVersion = 61.0,
	Name = 'AccountUpdates',
	Query = 'SELECT Id, Name, Phone FROM Account WHERE Name=\'ELTOROit\'',
	NotifyForFields = 'Referenced',
	NotifyForOperationCreate = true,
	NotifyForOperationUpdate = true,
	NotifyForOperationDelete = true,
	NotifyForOperationUndelete = true
);
