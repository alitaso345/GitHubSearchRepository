//APIクライアントのサーバに対するリクエストを表す

import Foundation

protocol GitHubRequest {
    var baseURL: URL { get }
    var path: String { get }
}

extension GitHubRequest {
    var baseURL: URL {
        return URL(string: "https://api.github.com")!
    }
}
