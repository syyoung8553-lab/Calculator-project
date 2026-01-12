/*
 AbstractOperation 추상화 프로토콜 추가
 */


//프로토콜 정의

protocol Abstractoperation {
    
    var firstnumber : Int {get set}
    var secoundnumber : Int {get set}
    
    func operate(_ firstnumber: Int, _secondnumber: Int)
  
}


class Calculator: Abstractoperation {
    
    let addoperation = AddOperation()
    let suboperation = SubOperation()
    let muloperation = MulOperation()
    let divideoperation = DivOperation()
    
    var firstnumber : Int
    var secoundnumber : Int
    
    init(firstnumber: Int, secoundnumber: Int) {
        self.firstnumber = firstnumber
        self.secoundnumber = secoundnumber
    }
    
   
    func operatee(calculate: status, firstnumber: Int, secondnumber: Int) -> Int {
        switch calculate {
        case .add:
            return addoperation.add(firstnumber, secondnumber)
        case .substract:
            return suboperation.sub(firstnumber, secondnumber)
        case .multiply:
            return muloperation.mul(firstnumber, secondnumber)
        case .divide:
            return divideoperation.div(firstnumber, secondnumber)
        }
        
    }
    
    //강의를 수강했지만 왜 오류가 뜨는지 잘 모르겠습니다 ㅜㅜ..
    
}


enum status {
    case add
    case substract
    case multiply
    case divide
}


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





