//JSONからインスタンスを生成するためのイニシャライザはAPIクライアントには頻発
//そのためJSONからインスタンス生成のためのイニシャライザはすべての型に共通して必要なため、protcolとして定義

import Foundation

protocol JSONDecodable {
    init(json: Any) throws
}
