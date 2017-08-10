fn is_prime(factors: &Vec<u64>, n: u64) -> bool {
    for f in factors {
        if n % f == 0 {
            return false;
        }
    }
    true
}

pub fn nth(n: usize) -> Result<u64, String> {
    if n == 0 {
        return Err(format!("Zero not allowed"));
    } 

    let mut factors = Vec::new();
    factors.push(2);

    let mut i = 3;
    while factors.len() != n {
        if is_prime(&factors, i) {
            factors.push(i)
        }
        
        i = i + 2;
    }

    Ok(factors[factors.len() - 1])
}
