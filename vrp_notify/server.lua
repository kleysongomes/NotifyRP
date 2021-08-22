local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

-- RegisterCommand('rr',function(source,args)
-- 	local source = source
-- 	local users = vRP.getUsers()
-- 	local user_id = vRP.getUserId(source)
-- 	local nplayer = vRP.getUserSource(users)
-- 	local identity = vRP.getUserIdentity(user_id)
--     if vRP.hasPermission(user_id,"mindmaster.permissao") then
--         if args[1] then
--             TriggerClientEvent("Notify",-1,"rr","Nossa Equipe esteve trabalhando em <b>correções e atualizações</b>. Foi agendado o reinicio do servidor daqui a <b>"..args[1].."</b> minutos, desloguem antes para evitar perdas.")
--             Wait(600000)
--              local users = vRP.getUsers()
--                 for k,v in pairs(users) do
--                 local id = vRP.getUserSource(parseInt(k))
--                 if id then
--                     vRP.kick(id,"Voce foi kickado nossa equipe esteve trabalhando em atualizaçoes.")
--                     vRP.kick(source,"Voce foi kickado nossa equipe esteve trabalhando em atualizaçoes.")
--                     os.exit()
--                 end
--             end
--         end
--     end
-- end)

RegisterCommand('adm3',function(source,args)
	local source = source
	local user_id = vRP.getUserId(source)
	local identity = vRP.getUserIdentity(user_id)
    if vRP.hasPermission(user_id,"mindmaster.permissao") then
        local mensagem = vRP.prompt(source,"Mensagem:","")
        if mensagem then
        TriggerClientEvent("Notify",-1,"anuncio","<b>"..mensagem.."</b></br></br> Mensagem enviada por: <b>"..identity.name.." "..identity.firstname)
        end
    end
end)

