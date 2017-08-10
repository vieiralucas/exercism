pub fn raindrops(n: i32) -> String {
    match (n % 3 == 0, n % 5 == 0, n % 7 == 0) {
        (true, true, true) => format!("PlingPlangPlong"),
        (true, true, false) => format!("PlingPlang"),
        (true, false, false) => format!("Pling"),
        (true, false, true) => format!("PlingPlong"),
        (false, true, true) => format!("PlangPlong"),
        (false, true, false) => format!("Plang"),
        (false, false, true) => format!("Plong"),
        (false, false, false) => format!("{}", n)
    }
}
