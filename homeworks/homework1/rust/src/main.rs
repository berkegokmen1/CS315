fn main() {
    // Declare/create an empty list
    let empty_v: Vec<i32> = Vec::new(); // Rust uses vectors to efficiently store a "list" of values
    println!("empty_v: {empty_v:?}");

    // Initialize a list with some values
    let mut v: Vec<i32> = vec![1, 2, 3, 4, 5, 6, 7, 8, 9];
    println!("v: {v:?}");

    // Check if the list is empty or not
    let is_empty: bool = v.is_empty();
    println!("is_empty: {is_empty}");

    // Add a new element to a list
    v.push(10);
    v.extend([11]);
    println!("v after push and extend: {v:?}");

    // Check if a particular element exists in the list
    let does_5_exist: bool = v.contains(&5);
    let does_50_exist: bool = v.iter().any(|e| e == &50); // slightly more complicated way
    println!("does_5_exist: {does_5_exist}, does_50_exist, {does_50_exist}");

    // Remove a particular element from the list
    let index = v.iter().position(|e| *e == 5).unwrap();
    v.remove(index); // remove 5 from the list, basic way

    v = v.iter().filter(|&&e| e != 4).map(|&e| e as i32).collect(); // remove 4, a little complicated
    println!("v after removing 4 and 5: {v:?}");
    v.remove(1); // remove at index 1
    println!("v after removing index 1: {v:?}");

    // Get the head and the tail of a list
    let (head, tail) = v.split_first().unwrap();
    println!("head: {head}, tail: {tail:?}");

    // Print all of the elements in the list
    v.iter().for_each(|&e| println!("{e}"));
}
