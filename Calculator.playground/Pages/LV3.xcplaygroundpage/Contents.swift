/*
아래 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
AddOperation(더하기)
SubstractOperation(빼기)
MultiplyOperation(곱하기)
DivideOperation(나누기)
 */



class AddOperation {
    func add(firstNumber: Int, secoundNumber: Int) -> Int {
        return firstNumber + secoundNumber
    }
}

class SubOperation {
    func sub(firstNumber: Int, secoundNumber: Int) -> Int {
        return firstNumber - secoundNumber
    }
}

class MulOperation {
    func mul(firstNumber: Int, secoundNumber: Int) -> Int {
        return firstNumber * secoundNumber
    }
}

class DivOperation {
    func rem(firstNumber: Int, secoundNumber: Int) -> Int {
        if secoundNumber == 0{
            print("0으로 나눌 수 없습니다")
            return 0
        }
        return firstNumber / secoundNumber
    }
    
    
}


class Calculator {
    
    var firstNumber : Int
    var secoundNumber : Int
    
    init(firstNumber: Int, secoundNumber: Int) {
        self.firstNumber = firstNumber
        self.secoundNumber = secoundNumber
    }
    
    func operation(status : String) -> Int{
        
        if status == "+" {
            let addOperation = AddOperation()
            return addOperation.add(firstNumber: firstNumber, secoundNumber: secoundNumber)
        } else if status == "-" {
            let subOperation = SubOperation()
            return subOperation.sub(firstNumber: firstNumber, secoundNumber: secoundNumber)
        } else if status == "*" {
            let mulOperation = MulOperation()
            return mulOperation.mul(firstNumber: firstNumber, secoundNumber: secoundNumber)
        } else if status == "/" {
            let divOperation = DivOperation()
            return divOperation.rem(firstNumber: firstNumber, secoundNumber: secoundNumber)
        } else{
            return 0
        }
        
        
        
    }
    
    
//
 /*   enum을 써도된다
  
  enum status
  case +
  case -
  case *
  case /
  
  위에 함수에 switch 문을 넣는다
  switch status
  case .+
  return addoperation.add(firstNumber, secondNumber)
  case .-
  return suboperation.sub(firstNumber, secondNumber)
  case .*
  return muloperation.mul(firstNumber, secondNumber)
  case ./
  return divoperation.rem(firstNumber, secondNumber)
  
  
*/
    
}

print(Calculator(firstNumber: 10, secoundNumber: 5).operation(status: "+")) //15
print(Calculator(firstNumber: 112312, secoundNumber: 12131).operation(status: "-")) //100181
print(Calculator(firstNumber: 400, secoundNumber: 20).operation(status: "*"))//8000
print(Calculator(firstNumber: 1000, secoundNumber: 0).operation(status: "/")) //"0으로 나눌 수 없습니다",0
print(Calculator(firstNumber: 1000, secoundNumber: 50).operation(status: "/")) //20




