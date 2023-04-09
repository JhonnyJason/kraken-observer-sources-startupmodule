############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("startupmodule")
#endregion

############################################################
import * as sci from "./scimodule.js"
import * as kraken from "./krakenobservermodule.js"

############################################################
export serviceStartup = ->
    log "serviceStartup"
    # sci.prepareAndExpose()
    # kraken.startObservation()
    allModules.aesmodule.runAllTests()
    return
