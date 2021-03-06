//
// CandidateStatusHistoryList.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CandidateStatusHistoryList: JSONEncodable {

    public var content: [CandidateStatusHistoryListElem]?
    public var totalFound: Int?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["content"] = self.content?.encodeToJSON()
        nillableDictionary["totalFound"] = self.totalFound
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
