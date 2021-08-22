RegisterNetEvent("Notify")
AddEventHandler("Notify", function(type, string)
    SendNUIMessage({
        NotifyString = string,
        NotifyType = type
    })
end)


RegisterCommand('notify',function()
	TriggerEvent("Notify","sucesso","Você vai ser desconectado em <b>60 segundos</b>.",8000)
	Wait(3000)
	TriggerEvent("Notify","negado","Você vai ser desconectado em <b>60 segundos</b>.",8000)
	Wait(3000)
	TriggerEvent("Notify","aviso","Você vai ser desconectado em <b>60 segundos</b>.",8000)
end)


RegisterNetEvent("progress")
AddEventHandler("progress",function(time,text)
	SendNUIMessage({ type = "ui", display = true, time = time, text = text })
end)