
startupmodule = {name: "startupmodule"}
############################################################
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["startupmodule"]?  then console.log "[startupmodule]: " + arg
    return

############################################################
sci = null
kraken = null

############################################################
startupmodule.initialize = () ->
    log "startupmodule.initialize"
    sci = allModules.scimodule
    kraken = allModules.krakenobservermodule
    return

############################################################
startupmodule.serviceStartup = ->
    log "startupmodule.serviceStartup"
    sci.prepareAndExpose()
    # kraken.startObservation()
    return

export default startupmodule