//
//  APIRequestable.swift
//  poc-nicko
//
//  Created by Rodrigo Santos de Souza on 04/02/22.
//

import Foundation

protocol APIRequestable: Encodable {

    var urlString: String { get }

    var method: HTTPMethod { get }

    var parameters: [String: Any] { get }
}

extension APIRequestable {

    var parameters: [String: Any] {
        let encoder = JSONEncoder()
        encoder.keyEncodingStrategy = .convertToSnakeCase
        return encoder.encodeToDictionary(self)
    }
}

private extension JSONEncoder {

    func encodeToDictionary<T: Encodable>(_ value: T) -> [String: Any] {
        do {
            let data = try self.encode(value)
            let jsonObject = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
            return (jsonObject as? [String: Any]) ?? [:]
        } catch {
            print(error.localizedDescription)
            return [:]
        }
    }
}
