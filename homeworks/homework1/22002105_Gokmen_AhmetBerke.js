// Declare/create an empty list
let list1 = new Array();
console.log('Empty list:', list1);

// Initialize a list with some values
let list2 = [
  'Apple',
  'Avocado',
  'Dragonfruit',
  'Grapefruit',
  'Grapes',
  'Hazelnut',
  'Kiwi',
  'Lime',
  'Tangelo',
];
console.log('list:', list2);

// Check if the list is empty or not
let isList1Empty = list1.length === 0;
let isList2Empty = list2.length === 0;
console.log(`isList1Empty: ${isList1Empty}, isList2Empty: ${isList2Empty}`);

// Add a new element to a list
let list = [];
list.push('Raspberries');
list.push('Cherries');
list.push('Watermelon');
list.push(...['Nectarines', 'Peach', 'Melon']);
console.log('After adding elements to a list:', list);

// Check if a particular element exists in the list
let doesNectarinesExist = list.find((e) => e === 'Nectarines') !== undefined;
let doesTangeloExist = list.indexOf('Tangelo') !== -1;
let doesPapayaExist = list.includes('Papaya');
console.log(
  `doesNectarinesExist: ${doesNectarinesExist}, doesTangeloExist: ${doesTangeloExist}, doesPapayaExist: ${doesPapayaExist}`
);

// Remove a particular element from the list
let indexOfRemoval = 4;
list.splice(indexOfRemoval, 1); // remove an element at index
list = list.filter((e) => e !== 'Watermelon'); // remove an element from list
console.log('After removing elements from a list:', list);

// Get the head and the tail of a list
let [head, ...tail] = list;
console.log(`head: ${head}, tail: ${tail}`);

// Print all of the elements in the list
list.forEach((e) => console.log(e));
