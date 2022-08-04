import UIKit
import Hydra

protocol HttpApi {
    func fetchData(id: Int) -> Promise<Data>
}

class HttpApiImpl {
    let baseUrl: String
    var accessToken: String

    let jsonEncoder = JSONEncoder()
    let jsonDecoder = JSONDecoder()
    let defaultConfig = { () -> URLSessionConfiguration in
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 10 * 1000
        return config
    }()

    init(atBaseUrl baseUrl: String, accessToken userToken: String) {
        self.baseUrl = baseUrl
        self.accessToken = userToken
    }
}

extension HttpApiImpl: HttpApi {
    func fetchData(id: Int) -> Promise<Data> {
        let res = Promise<Data>(in: .background) { resolve, reject, _ in
            let url = URL(string: self.baseUrl + "/additional_path")
            var request = URLRequest(url: url!)
            request.httpMethod = "GET"
            request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
            request.setValue("app-version", forHTTPHeaderField: "x-header-app-version-ios")
            
            URLSession(configuration: self.defaultConfig).dataTask(with: request) { data, response, error in
                do{
                    resolve(Data(id: 10, title: "this data"))
                } catch let err {
                    print("DEBUG error occured === ", err)
                    reject(err)
                }
            }.resume()
        }
        return res
    }
}
