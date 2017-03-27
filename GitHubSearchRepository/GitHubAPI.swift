final class GitHubAPI {
    struct SearchRepositories : GitHubRequest {
        let keyword: String

        //GitHubRequestが要求する連想型
        typealias Response = SearchResponse<Repository>

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/search/repositories"
        }

        var parameters: Any? {
            return ["q": keyword]
        }
    }
}
