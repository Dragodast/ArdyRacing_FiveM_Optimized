function NotifyPlayerAlert_client(msg)
	TriggerClientEvent('QBCore:Notify', source, msg, 'notify')
end

function NotifyPlayerError_client(msg)
	TriggerClientEvent('QBCore:Notify', source, msg, 'error')
end

function NotifyPlayerSuccess_client(msg)
	TriggerClientEvent('QBCore:Notify', source, msg, 'success')
end