fn main() {
    // Declare/create an empty list
    let empty_v: Vec<String> = Vec::new(); // Rust uses vectors to efficiently store a "list" of values
    println!("empty_v: {empty_v:?}");

    // Initialize a list with some values
    let mut v: Vec<String> = vec![
        "Apple".to_string(),
        "Avocado".to_string(),
        "Cherries".to_string(),
        "Dragonfruit".to_string(),
        "Grapefruit".to_string(),
        "Grapes".to_string(),
        "Hazelnut".to_string(),
        "Kiwi".to_string(),
        "Lime".to_string(),
        "Nectarines".to_string(),
        "Raspberries".to_string(),
    ];
    println!("v: {v:?}");

    // Check if the list is empty or not
    let is_empty: bool = v.is_empty();
    println!("is_empty: {is_empty}");

    // Add a new element to a list
    v.push("Tangelo".to_string());
    v.extend(["Watermelon".to_string()]);
    println!("v after push and extend: {v:?}");

    // Check if a particular element exists in the list
    let does_melon_exist: bool = v.contains(&"Melon".to_string());
    let does_cherries_exist: bool = v.iter().any(|e| e == &"Cherries".to_string()); // slightly more complicated way
    println!("does_melon_exist: {does_melon_exist}, does_cherries_exist, {does_cherries_exist}");

    // Remove a particular element from the list
    let index = v.iter().position(|e| *e == "Cherries".to_string()).unwrap();
    v.remove(index); // remove Cherries from the list, basic way
    println!("v after removing Cherries: {v:?}");
    v.remove(1); // remove at index 1
    println!("v after removing index 1: {v:?}");

    // Get the head and the tail of a list
    let (head, tail) = v.split_first().unwrap();
    println!("head: {head}, tail: {tail:?}");

    // Print all of the elements in the list
    v.iter().for_each(|e| {
        let x = &*e;
        println!("{x}");
    });
}
