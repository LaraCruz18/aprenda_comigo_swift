import Foundation

enum APIKey {
    static var `default`: String {
        guard let filePath = Bundle.main.path(forResource: "GenerativeAI-Info", ofType: "plist") else {
            fatalError("Não é possível achar o arquivo")
        }

        let plist = NSDictionary(contentsOfFile: filePath)
        guard let value = plist?.object(forKey: "API_KEY") as? String else {
            fatalError("Não foi possível achar a chave")
        }

        if value.starts(with: "_") {
            fatalError("Siga as instruções no site.")
        }

        return value
    }
}
