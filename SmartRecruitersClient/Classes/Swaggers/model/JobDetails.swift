//
// JobDetails.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class JobDetails: JSONEncodable {

    public enum Status: String { 
        case Created = "CREATED"
        case Sourcing = "SOURCING"
        case Filled = "FILLED"
        case Cancelled = "CANCELLED"
        case Interview = "INTERVIEW"
        case Offer = "OFFER"
        case Other = "OTHER"
    }
    
    public var actions: Actions?
    public var compensation: Compensation?
    public var createdOn: NSDate?
    public var creator: JobCreator?
    public var department: JobDepartment?
    public var eeoCategory: DictionaryItem?
    public var experienceLevel: DictionaryItem?
    public var function: DictionaryItem?
    public var id: String?
    public var industry: DictionaryItem?
    public var jobAd: JobAd?
    public var location: Location?
    public var properties: [JobProperty]?
    public var refNumber: String?
    public var status: Status?
    public var targetHiringDate: NSDate?
    public var template: Bool?
    public var title: String?
    public var typeOfEmployment: DictionaryItem?
    public var updatedOn: NSDate?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["actions"] = self.actions?.encodeToJSON()
        nillableDictionary["compensation"] = self.compensation?.encodeToJSON()
        nillableDictionary["createdOn"] = self.createdOn?.encodeToJSON()
        nillableDictionary["creator"] = self.creator?.encodeToJSON()
        nillableDictionary["department"] = self.department?.encodeToJSON()
        nillableDictionary["eeoCategory"] = self.eeoCategory?.encodeToJSON()
        nillableDictionary["experienceLevel"] = self.experienceLevel?.encodeToJSON()
        nillableDictionary["function"] = self.function?.encodeToJSON()
        nillableDictionary["id"] = self.id
        nillableDictionary["industry"] = self.industry?.encodeToJSON()
        nillableDictionary["jobAd"] = self.jobAd?.encodeToJSON()
        nillableDictionary["location"] = self.location?.encodeToJSON()
        nillableDictionary["properties"] = self.properties?.encodeToJSON()
        nillableDictionary["refNumber"] = self.refNumber
        nillableDictionary["status"] = self.status?.rawValue
        nillableDictionary["targetHiringDate"] = self.targetHiringDate?.encodeToJSON()
        nillableDictionary["template"] = self.template
        nillableDictionary["title"] = self.title
        nillableDictionary["typeOfEmployment"] = self.typeOfEmployment?.encodeToJSON()
        nillableDictionary["updatedOn"] = self.updatedOn?.encodeToJSON()
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}