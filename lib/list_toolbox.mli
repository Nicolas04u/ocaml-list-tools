open Base 

val dedup : 'a list -> compare:('a -> 'a -> int) -> 'a list
val find_peak : int list -> int option 