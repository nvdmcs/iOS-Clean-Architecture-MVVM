//
//  NetworkSessionMock.swift
//  ExampleMVVMTests
//
//  Created by Oleh Kudinov on 16.08.19.
//

import Foundation

struct NetworkSessionMock: NetworkSession {
    let response: HTTPURLResponse?
    let data: Data?
    let error: Error?
    
    func loadData(from request: URLRequest,
                  completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> Cancellable {
        completionHandler(data, response, error)
        return URLSessionDataTask()
    }
}
