//
// CandidateAttachment.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CandidateAttachment: JSONEncodable {

    public var actions: Actions?
    public var contentType: String?
    public var id: String?
    public var name: String?
    public var type: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["actions"] = self.actions?.encodeToJSON()
        nillableDictionary["contentType"] = self.contentType
        nillableDictionary["id"] = self.id
        nillableDictionary["name"] = self.name
        nillableDictionary["type"] = self.type
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}