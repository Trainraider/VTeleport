kill @e[tag=vtp_spawnChunks]
kill @e[tag=cloudTimer]
scoreboard objectives remove version

#IDMANAGER#
###############################################################################
kill @e[tag=idm_idStruct]
kill @e[tag=idm.logoutId]
scoreboard objectives remove idm_id
scoreboard objectives remove idm_maxId
scoreboard objectives remove idm_idIndex
scoreboard objectives remove idm_maxIdIndex
scoreboard objectives remove idm_loggedOut
scoreboard objectives remove idm_offline
scoreboard objectives remove idm_idIndexCheck
scoreboard objectives remove idm_idCheck

tag @a remove idm.login
tag @a remove idm.offline
###############################################################################

#TPA#
###############################################################################
kill @e[tag=vtp_tp]
scoreboard objectives remove tpa
scoreboard objectives remove vtp_ui
scoreboard objectives remove vtp_tpidIndex
scoreboard objectives remove vtp_tpid
scoreboard objectives remove vtp_tpInstance
scoreboard objectives remove vtp_tpInstncChck
scoreboard objectives remove vtp_tprInstance
scoreboard objectives remove vtp_tprInstnChck
scoreboard objectives remove vtp_maxTpInstnce
scoreboard objectives remove confirm
scoreboard objectives remove vtp_tpStep
scoreboard objectives remove vtp_timeOut
scoreboard objectives remove vtp_validId

tag @a[tag=vtp_tpa] remove vtp_tpa
tag @a[tag=vtp_tpahere] remove vtp_tpahere
tag @a[tag=vtp_active] remove vtp_active
###############################################################################

#TPAHERE#
###############################################################################
scoreboard objectives remove tpahere
###############################################################################

#TPCANCEL#
###############################################################################
scoreboard objectives remove tpcancel
###############################################################################

#SPELLBOOK#
###############################################################################
scoreboard objectives remove tpbook
###############################################################################

gamerule sendCommandFeedback true
tellraw @a {"text":"VTeleport is now uninstalled","color":"green"}
datapack disable "file/vteleport"