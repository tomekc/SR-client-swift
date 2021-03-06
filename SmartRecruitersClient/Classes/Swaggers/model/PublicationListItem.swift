//
// PublicationListItem.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class PublicationListItem: JSONEncodable {

    public var publishedOn: NSDate?
    public var sourceName: String?
    public var type: String?
    public var unpublishedOn: NSDate?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["publishedOn"] = self.publishedOn?.encodeToJSON()
        nillableDictionary["sourceName"] = self.sourceName
        nillableDictionary["type"] = self.type
        nillableDictionary["unpublishedOn"] = self.unpublishedOn?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
