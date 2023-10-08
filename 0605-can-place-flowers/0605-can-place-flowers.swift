class Solution {
    func canPlaceFlowers(_ flowerbed: [Int], _ n: Int) -> Bool {
        let len = flowerbed.count
        
        /* 
        if [1] [1,1] [1,0] [0,1] => n must be 0
        
        if [0,0] [0] => n must be 0 or 1
        */
        if flowerbed == [1] || flowerbed == [1,1] || flowerbed == [0,1] || flowerbed == [1,0] {
            if n == 0 { return true }
            return false
        } else if flowerbed == [0,0] || flowerbed == [0] {
            if n == 1 || n == 0 { return true }
            return false
        }
        
        var flowerbed = flowerbed
        var count = 0
        
        /*
            [ 0, 0, 0, ... ]
              ^  ^
        */
        if flowerbed[0] == 0 && flowerbed[1] == 0 {
            flowerbed[0] = 1
            count += 1
        }
        
        /*
            [ ..., 0, 0, 0, 0, 0, ... ]
                      ^  ^  ^
                     i-1 i i+1
        */
        for i in 1..<len - 1 {
            if flowerbed[i - 1] == 0 && flowerbed[i] == 0 && flowerbed[i + 1] == 0 {
                flowerbed[i] = 1
                count += 1
            }
        }
        
        /*
            [ ..., 0, 0, 0 ]
                      ^  ^
        */
        if flowerbed[len - 1] == 0 && flowerbed[len - 2] == 0 {
            count += 1
        }
        
        return count >= n
    }
}