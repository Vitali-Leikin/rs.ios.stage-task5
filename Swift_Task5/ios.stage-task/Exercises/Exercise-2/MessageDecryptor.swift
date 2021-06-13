import UIKit

class MessageDecryptor: NSObject {
    var countArray:[Int] = []
    var tempArrayText:[String] = []
        // var messageArray = ""
    var resultSrtring = ""
    
    func decryptMessage(_ message: String) -> String {
    
   
        calcWords(message)
        
        print(countArray)
        print(tempArrayText)
        
        if countArray.count == 0 {
            resultSrtring = tempArrayText.first ?? ""
        }
        
        for (index, value) in countArray.enumerated() {
            print(index)
            print(value)
            var counter = 0
            
            while counter < value {
                resultSrtring.append(tempArrayText[index])
                print(resultSrtring)
                counter += 1
            }
        }
        
       

        return resultSrtring
}

    
    
    func calcWords(_ message: String){
        
        
        var messageArray = message
        
       print(messageArray)
        
        let patternOne = "^[a-z]{1,300}"
    
        do {
            let regex = try NSRegularExpression(pattern: patternOne)
            
            if let match = regex.firstMatch(in: messageArray, range: NSRange(messageArray.startIndex..., in: messageArray)) {

                let partOne = messageArray[Range(match.range, in: messageArray)!]

                print(String(partOne))
                
                print(String(messageArray))
                tempArrayText.append(String(partOne))

                print(tempArrayText)
                
                print(messageArray.removeFirst(partOne.count) )
                
                print(messageArray)
            
                countArray.append(1)

                
            } else{
                
                
                let patternNumber = "[0-9]{1,300}"
                do {
                    let regex = try NSRegularExpression(pattern: patternNumber)

                    if let match = regex.firstMatch(in: messageArray, range: NSRange(messageArray.startIndex..., in: messageArray)) {

                        let partN = messageArray[Range(match.range, in: messageArray)!]

                        print(String(partN))

                        countArray.append(Int(partN) ?? 0)


                        print(messageArray.remove(at: partN.startIndex))
                    }
                } catch { print(error) }
                
                
                
            }
        } catch { print(error) }
    
       
            
        let patternNumber = "\\b[0-9]{1,300}"
   //     let patternNumber = "\\w.[0-9]{1,300}"
        do {
            let regex = try NSRegularExpression(pattern: patternNumber)

            if let match = regex.firstMatch(in: messageArray, range: NSRange(messageArray.startIndex..., in: messageArray)) {

                let partN = messageArray[Range(match.range, in: messageArray)!]

                print(String(partN))

                countArray.append(Int(partN) ?? 0)


                print(messageArray.remove(at: partN.startIndex))
                
            }
//            else if let match = regex.firstMatch(in: messageArray, range: NSRange(messageArray.startIndex..., in: messageArray)) {
//
//                let partN = messageArray[Range(match.range, in: messageArray)!]
//
//                print(String(partN))
//
//                countArray.append(Int(partN) ?? 0)
//
//
//                print(messageArray.remove(at: partN.startIndex))
//
//            }
            
        } catch { print(error) }
        
        
        
        
        let patternTemp = "\\[|\\]"
        do {
            let regex = try NSRegularExpression(pattern: patternTemp)

            if let match = regex.firstMatch(in: messageArray, range: NSRange(messageArray.startIndex..., in: messageArray)) {

                let partQ = messageArray[Range(match.range, in: messageArray)!]

                print(String(partQ))

                print(messageArray.remove(at: partQ.startIndex))
            }
        } catch { print(error) }
        
        
       
        let pattern = "[a-z]{1,300}"
    
        do {
            let regex = try NSRegularExpression(pattern: pattern)
            
            if let match = regex.firstMatch(in: messageArray, range: NSRange(messageArray.startIndex..., in: messageArray)) {

                let part1 = messageArray[Range(match.range, in: messageArray)!]

                print(String(part1))
                
                print(String(messageArray))
                tempArrayText.append(String(part1))

                print(tempArrayText)
                
                print(messageArray.removeFirst(part1.count) )
                
                print(messageArray)
            
                
            }
        } catch { print(error) }
        
        
        let patternTempTwo = "\\[|\\]"
        do {
            let regex = try NSRegularExpression(pattern: patternTempTwo)

            if let match = regex.firstMatch(in: messageArray, range: NSRange(messageArray.startIndex..., in: messageArray)) {

                let partQTwo = messageArray[Range(match.range, in: messageArray)!]

                print(String(partQTwo))

                print(messageArray.remove(at: partQTwo.startIndex))
            }
        } catch { print(error) }
        
        
    
    if messageArray.count > 1 {
        calcWords(messageArray)
    }else{
        
        
        print("result")
    }
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
}


