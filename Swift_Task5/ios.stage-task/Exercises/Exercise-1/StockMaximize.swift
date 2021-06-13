import Foundation

class StockMaximize {
    
    func countProfit(prices: [Int]) -> Int {
        
        let counter = 0
        var pricesArray = prices
        var result = 0
        var count = 0
        var  temp = 0
        
        
        
        while counter < pricesArray.count - 1 {
            
            print(pricesArray)
            
            if pricesArray[counter] == pricesArray[counter + 1]{
                
                
                
                while pricesArray[counter] < pricesArray.max() ?? 0 {
                    
                    temp += pricesArray[counter]
                    count += 1
                    print("temp = \(temp)")
                    print("count = \(count)")
                    
                    pricesArray.remove(at: counter)
                    
                }
                let maxValueInArray = pricesArray.max() ?? 0
                
                if (result < (maxValueInArray * count  - temp)){
                    result = maxValueInArray * count  - temp
                }
                print("result = \(result)")
                
                pricesArray.remove(at: counter)
            }
            
            if pricesArray == [] || pricesArray.count == 1 {
                return result
            }
            
            
            if (pricesArray[counter + 1] > pricesArray[counter]) {
                
                if (pricesArray.last == (pricesArray.max() ?? 0)) && pricesArray.count > 2{
                    
                    while pricesArray[counter] < pricesArray.max() ?? 0 {
                        
                        if (pricesArray[counter] == pricesArray.max() ?? 0 ) {
                            pricesArray.remove(at: counter)
                        }
                        
                        temp += pricesArray[counter]
                        count += 1
                        
                        print("tempL = \(temp)")
                        print("countL = \(count)")
                        pricesArray.remove(at: counter)
                        
                        print(pricesArray)
                        
                    }
                    
                    let temz = pricesArray.max() ?? 0
                    
                    if (result < (temz * count  - temp)){
                        result = temz * count  - temp
                    }
                    
                    pricesArray.remove(at: counter)
                    
                }
                
                
                if pricesArray.count > 1 {
                    
                    result += pricesArray[counter + 1] - pricesArray[counter]
                    
                    pricesArray.remove(at: counter)
                    
                    pricesArray.remove(at: counter)
                    
                }
                
            }
            
            
            if pricesArray == []{
                return result
            }
            
            
            if pricesArray.count > 1{
                
                if pricesArray[counter] > pricesArray[counter + 1]{
                    
                    pricesArray.remove(at: counter)
                    
                    
                }
                
            }
            
        }
        
        
        if result < 0{
            result = 0
        }
        
        return result
    }
}
