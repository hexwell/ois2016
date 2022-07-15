fn occulta(N: i16, M: i16, n: i16, mut res: i16) -> i16 {
    let l: i64;
    
    for i in (3..10).step_by(3) {
        let new_num: i16 = n * 10 + i;
        
        if n % 10 != i && new_num < (10 as i16).pow(N as u32) {
            let new_res: i16 = new_num % M;
            
            if new_res > res {
                res = new_res;
            }
                
            let l = occulta(N, M, new_num, res);
            
            if l > res {
                res = l;
            }
        }
    }
    
    return res;
}
