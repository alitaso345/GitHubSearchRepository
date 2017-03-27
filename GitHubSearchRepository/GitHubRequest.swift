//APIクライアントのサーバに対するリクエストを表す

import Foundation

protocol GitHubRequest {
    associatedtype Response: JSONDecodable

    var baseURL: URL { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameters: Any? { get }
}

extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}
