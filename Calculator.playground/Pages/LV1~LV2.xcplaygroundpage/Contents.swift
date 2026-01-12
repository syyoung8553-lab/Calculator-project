class Calculator {
    
    var firstNumber : Int
    var secoundNumber : Int
    
    init(firstNumber: Int, secoundNumber: Int) {
        self.firstNumber = firstNumber
        self.secoundNumber = secoundNumber
    }
    
    func add() -> Int{
        return firstNumber + secoundNumber
    }
    
    func sub() -> Int{
        return firstNumber - secoundNumber
    }
    
    func mul() -> Int{
        return firstNumber * secoundNumber
    }
    
    func div() -> Double{
        if secoundNumber == 0{
            print("0으로 나누는 것을 불가능합니다")
            return 0
        }
        return Double(firstNumber) / Double(secoundNumber)
    }
    
    func rem() -> Int{
        if secoundNumber == 0{
            print("0으로 나누는 것을 불가능합니다")
            return 0
        }
        return firstNumber % secoundNumber
    }
    

    
    
}

let calculator = Calculator(firstNumber: 10, secoundNumber: 5)
print(calculator.add()) //인스턴스 생성


print(Calculator(firstNumber: 10, secoundNumber: 5).add())
print(Calculator(firstNumber: 100, secoundNumber: 7).rem())
print(Calculator(firstNumber: 100, secoundNumber: 0).rem())
print(Calculator(firstNumber: 1, secoundNumber: 3).div())
