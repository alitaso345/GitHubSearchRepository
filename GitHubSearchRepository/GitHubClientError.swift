//APIクライアントがモデル化されたレスポンスを取得するまでに発生し得るエラー

import Foundation

enum GitHubClientError : Error {
    //通信に失敗
    case connectionError(Error)

    //レスポンスの解釈に失敗
    case responseParseError(Error)

    //APIからエラーレスポンスを受け取った
    case apiError(GitHubAPIError)
}
