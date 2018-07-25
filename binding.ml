(* Bindings *)

external _log: string -> unit = "ml_log"

let log s = _log s
