(* Semantic checking for the Liva compiler *)

open Ast
open Sast

module StringMap = Map.Make(String)

(* Semantic checking of a program. Returns void if successful,
   throws an exception if something is wrong.

   Check each global variable, then check each function *)

module StringMap = Map.make(String)
module StringSet = Set.make (String)





let struct_indexes: (string, int) Hashtle.t =  Hashtbl.create 10

let generate_struct_indexs cdecls= 
	let cdecls_handler index cdecl=
	Hashtbl.add struct_indexes cdecl.cname index in 
	List.iteri cdecl_handler cdecls







(*to-do: Includes files*)
let process_includes filename reserved classess = classess






(***********)
(*  TASK2  *)
(***********)
let add_reserved_functions = reserved 











(***********)
(*  TASK3  *)
(***********)
let build_class_maps reserved cdecls = class_maps








(* to-do handle_inheritance *)
let handle_inheritance cdecls class_maps = class_maps, cdecls 


(***********)
(*  TASK4  *)
(***********)
let convert_sat_to_sast class_maps reserved cdecls = sast 












(***********************************************************)
(* Entry point for translating Ast to Sast *)
(***********************************************************)

let check fielname program = match program with 

	program (inlcudes, classes) ->
 	let cdecls = process_includes fielname includes classess in 
	ignore (generate_struct_indexes  cdecls);


	(* add reserved built-in functions*)
	let reserved = add_reserved_functions in 

	let class_maps = build_class_maps reserved cdecls in 

        let class_maps, cdecls = handle_inheritance cdecls class_maps in 


	let sast = convert_sat_to_sast class_maps reserved cdecls in 

	sast 




	

  
