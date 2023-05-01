package main

import (
	"fmt"
)

func main() {

	// Declare/create an empty list
	var empty_list []string
	fmt.Println("empty_list:", empty_list)

	// Initialize a list with some values
	var l = []string{
    "Apple",
    "Avocado",
    "Cherries",
    "Dragonfruit",
    "Grapefruit",
    "Grapes",
    "Hazelnut",
    "Kiwi",
    "Lime",
    "Nectarines",
    "Raspberries",
  }
	fmt.Println("list:", l)

	// Check if the list is empty or not
	var is_empty bool = len(l) == 0
	fmt.Println("is_empty:", is_empty)

	// Add a new element to a list
  l = append(l, "Watermelon")
	fmt.Println("list after adding an element:", l)

	// Check if a particular element exists in the list
  var does_watermelon_exist bool = false
  var does_orange_exist bool = false
  for _, e := range l {
    if e == "Watermelon" {
      does_watermelon_exist = true
    }
    if e == "Orange" {
      does_orange_exist = true
    }
  }
  fmt.Println("does_watermelon_exist:", does_watermelon_exist, "does_orange_exist:", does_orange_exist)
  
	// Remove a particular element from the list
  l = append(l[:3], l[4:]...) // remove element at index 3. this code first gets all the elements up to 3rd index, then combines it with elements starting from 4
  fmt.Println("list after removing an element:", l)
  
	// Get the head and the tail of a list
  head, tail := l[0], l[1:]
  fmt.Println("head:", head, "tail", tail)
  
	// Print all of the elements in the list
  fmt.Println("list:")
  for _, e := range l {
    fmt.Println(e)
  }
}
