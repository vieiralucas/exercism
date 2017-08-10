/// returns true if a is divisible by b
fn is_divisible(a: i32, b: i32) -> bool {
    a % b == 0
}

/// returns true if year is a leap year
pub fn is_leap_year(year: i32) -> bool {
    if is_divisible(year, 100) {
        is_divisible(year, 400)
    } else {
        year % 4 == 0 
    }
}
