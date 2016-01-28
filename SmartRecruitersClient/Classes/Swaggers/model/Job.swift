//
// Job.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class Job: JSONEncodable {

    public var compensation: Compensation?
    public var department: JobDepartment?
    public var eeoCategory: DictionaryItem?
    public var experienceLevel: DictionaryItem?
    public var function: DictionaryItem?
    public var industry: DictionaryItem?
    public var jobAd: JobAd?
    public var location: Location?
    public var properties: [JobProperty]?
    public var refNumber: String?
    public var targetHiringDate: NSDate?
    public var template: Bool?
    public var title: String?
    public var typeOfEmployment: DictionaryItem?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["compensation"] = self.compensation?.encodeToJSON()
        nillableDictionary["department"] = self.department?.encodeToJSON()
        nillableDictionary["eeoCategory"] = self.eeoCategory?.encodeToJSON()
        nillableDictionary["experienceLevel"] = self.experienceLevel?.encodeToJSON()
        nillableDictionary["function"] = self.function?.encodeToJSON()
        nillableDictionary["industry"] = self.industry?.encodeToJSON()
        nillableDictionary["jobAd"] = self.jobAd?.encodeToJSON()
        nillableDictionary["location"] = self.location?.encodeToJSON()
        nillableDictionary["properties"] = self.properties?.encodeToJSON()
        nillableDictionary["refNumber"] = self.refNumber
        nillableDictionary["targetHiringDate"] = self.targetHiringDate?.encodeToJSON()
        nillableDictionary["template"] = self.template
        nillableDictionary["title"] = self.title
        nillableDictionary["typeOfEmployment"] = self.typeOfEmployment?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
