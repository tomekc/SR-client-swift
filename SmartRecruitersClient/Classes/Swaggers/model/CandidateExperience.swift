//
// CandidateExperience.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class CandidateExperience: JSONEncodable {

    public var company: String?
    public var current: Bool?
    public var description: String?
    public var endDate: String?
    public var location: String?
    public var startDate: String?
    public var title: String?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["company"] = self.company
        nillableDictionary["current"] = self.current
        nillableDictionary["description"] = self.description
        nillableDictionary["endDate"] = self.endDate
        nillableDictionary["location"] = self.location
        nillableDictionary["startDate"] = self.startDate
        nillableDictionary["title"] = self.title
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
