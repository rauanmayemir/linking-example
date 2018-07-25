(* App *)
open Linking_binding

let main () = Binding.log "Hello, World"

let _ = Callback.register "App.main" main
