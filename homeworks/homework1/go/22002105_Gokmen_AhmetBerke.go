package main

import ("fmt" 
				"container/list"
			);

func main() {
	new_list := list.New()
	new_list.PushBack(1)
	fmt.Println(new_list.Front().Value)
}