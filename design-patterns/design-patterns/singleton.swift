import Foundation

class Singleton {

    static var getInstance: Singleton = {
        let instance = Singleton()

        return instance
    }()

    private init() {}
}

extension Singleton: NSCopying {

    func copy(with zone: NSZone? = nil) -> Any {
        return self
    }
}

class Client {
    static func runClientCode() {
        let instance1 = Singleton.getInstance
        let instance2 = Singleton.getInstance

        if (instance1 === instance2) {
            print("Singleton works, both variables contain the same instance.")
        } else {
            print("Singleton failed, variables contain different instances.")
        }
    }
}