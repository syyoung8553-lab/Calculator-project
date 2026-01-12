/*
 AbstractOperation 추상화 프로토콜 추가
 */


//프로토콜 정의

protocol Abstractoperation {
    
    var firstnumber : Int {get set}
    var secoundnumber : Int {get set}
    
    func add(firstnumber: Int, secoundnumber: Int) -> Int
    func sub(firstnumber: Int, secoundnumber: Int) -> Int
    func mul(firstnumber: Int, secoundnumber: Int) -> Int
    func rem(firstnumber: Int, secoundnumber: Int) -> Int
    
    /*func add(firstnumber: Int, secoundnumber: Int) -> Int
    func sub(firstnumber: Int, secoundnumber: Int) -> Int
    func mul(firstnumber: Int, secoundnumber: Int) -> Int
    func rem(firstnumber: Int, secoundnumber: Int) -> Int
     */
}

//각각의 addoperation,suboperation등 클래스를 만들고 위에 만든 프로토콜을 넣어주면 위에있는 프로토콜의 모든 함수를 넣어야해서 클래스의 취지와 맞지 않는다. 내가 프로토콜을 잘못 정의한 거 일 수도 있을 것 같다.. ㅜ

// 결국 Calculator 클래스에 위 프로토콜을 다 넣어버렸지만..
class Calculator: Abstractoperation {
    
    var firstnumber : Int
    var secoundnumber : Int
    
    init(firstnumber: Int, secoundnumber: Int) {
        self.firstnumber = firstnumber
        self.secoundnumber = secoundnumber
    }
    
    
    func add(firstnumber: Int, secoundnumber: Int) -> Int {
        return firstnumber + secoundnumber
    }
    
    func sub(firstnumber: Int, secoundnumber: Int) -> Int {
        return firstnumber - secoundnumber
    }
    
    func mul(firstnumber: Int, secoundnumber: Int) -> Int {
        return firstnumber * secoundnumber
    }
    
    func rem(firstnumber: Int, secoundnumber: Int) -> Int {
        if secoundnumber == 0{
            Swift.print("0으로 나눌 수 없습니다")
            // Use of 'print' refers to instance method rather than global function 'print(_:separator:terminator:)' in module 'Swift' 오류 떠서 print 앞에 Swift. 추가 왜그런거지?ㅜ
            //아마 다른 모듈에 있는 print함수랑 충돌이 나서 그런 것 같다 ㅜ
            return 0
        }
        return firstnumber / secoundnumber
        
    }
}
    
print(Calculator(firstnumber: 10, secoundnumber: 5.).add(firstnumber: 10, secoundnumber: 5))
    // 잘 모르겠다 출력이 안된다... 도전은 실패해버렸다.
