// Declare/create an empty list
let list1 = new Array();

// Initialize a list with some values
let list2 = [1, 2, 3];

// Check if the list is empty or not
let isList1Empty = list1.length === 0;
let isList2Empty = list2.length === 0;

// Add a new element to a list
let list = [];
list.push(1);
list.push(2);
list.push(3);
list.push(...[4, 5, 6]);

// Check if a particular element exists in the list
let does1Exist = list.find((e) => e === 1) !== undefined;
let does5Exist = list.indexOf(5) !== -1;
let does10Exist = list.includes(10);

// Remove a particular element from the list
let indexOfRemoval = 2;
list.splice(indexOfRemoval, 1); // remove an element at index
list = list.filter((e) => e !== 5); // remove an element from list

// Get the head and the tail of a list
let [head, ...tail] = list;

// Print all of the elements in the list
list.forEach((e) => console.log(e));
