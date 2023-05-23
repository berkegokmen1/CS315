fn main() {
    // 1. Are formal and actial parameters type checked?
    println!("\n 1.");

    fn print_int(value: i64) {
        println!("Value: {value}");
    }

    print_int(10);
    // print_int("sa"); // Error 1, this will not compile

    // 2. Are keyword (named) parameters supported?
    println!("\n 2."); // They are not supported in rust

    fn kw_test(val1: i64, val2: i64) {
        println!("val1: {val1}, val2: {val2}");
    }

    kw_test(10, 10);
    // These will all fail (Error 2)
    // kw_test(val1=10, val2=20);
    // kw_test({val1=10, val2=20});
    // kw_test({val1: 10, val2: 20});
    // kw_test({val1 => 10, val2 => 20});

    // 3. Are default paremeters supported?
    println!("\n 3.");

    // Rust actually does not support default arguments.
    // The following function will generate a compile time error.
    // fn say_info(experience: i32 = 10, age: i32 = 20) {
    //     println!("hi! {experience} {age}");
    // }

    // 4. What are the paremeter passing methods provided?
    println!("\n 4.");

    // 4.1. Transferring ownership (similar to pass by value)
    fn transfer_ownership(name: String) {
        println!("Hi {}", name);
    }

    let name: String = String::from("berke gokmen");
    transfer_ownership(name);
    // println!("Outside: {}", name); // This will cause a compile time error

    // 4.2. Pass by reference (borrowing)
    fn borrow_value(name: &String) {
        println!("Hi again {}", name);
    }

    let animal: String = String::from("animal");
    borrow_value(&animal);
    println!("Outside again: {}", animal); // This will work since object is not transfered to other function

    // 4.2. Pass by reference (borrowing)
    fn borrow_and_modify(name: &mut String) {
        name.push_str("_modified");
        println!("Modified: {}", name)
    }

    let mut modify_name = String::from("selam");
    borrow_and_modify(&mut modify_name);
    println!("outside: {}", modify_name); // we see that variable changed

    // 5. Can subprograms be passed as parameters? If so, how is the referencing environment of the passed subprogram bound?
    println!("\n 5.");

    // Rust will choose this num (static scope). Thus it's deep binding.
    let num: i32 = 11;
    let get_num = || {
        println!("{}", num);
    };

    fn test_ref_env<F>(op: F)
    where
        F: Fn(),
    {
        let num: i32 = 22; // this will be ignored

        op();
    }

    test_ref_env(get_num);
}
