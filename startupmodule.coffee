############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("startupmodule")
#endregion

############################################################
sci = null
kraken = null

############################################################
export initialize = () ->
    log "initialize"
    sci = allModules.scimodule
    kraken = allModules.krakenobservermodule
    return

############################################################
export serviceStartup = ->
    log "serviceStartup"
    sci.prepareAndExpose()
    kraken.startObservation()
    return