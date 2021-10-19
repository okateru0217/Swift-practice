import UIKit

class Human {
    func sayHello() {
        print("Hello")
    }
}

class Man: Human {
    let sex = "man"
    
    func getSex() -> String {
        return self.sex
    }
    
    func callSuper() {
        super.sayHello()
    }
}

let man = Man()

let sex = man.getSex()
print(sex)

man.sayHello()
man.callSuper()
