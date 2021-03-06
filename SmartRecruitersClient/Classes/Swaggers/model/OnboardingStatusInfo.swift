//
// OnboardingStatusInfo.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


public class OnboardingStatusInfo: JSONEncodable {

    public enum OnboardingStatus: String { 
        case ReadyToOnboard = "READY_TO_ONBOARD"
        case OnboardingSuccessful = "ONBOARDING_SUCCESSFUL"
        case OnboardingFailed = "ONBOARDING_FAILED"
    }
    
    public var onboardingStatus: OnboardingStatus?
    

    public init() {}

    // MARK: JSONEncodable
    func encodeToJSON() -> AnyObject {
        var nillableDictionary = [String:AnyObject?]()
        nillableDictionary["onboardingStatus"] = self.onboardingStatus?.rawValue
        let dictionary: [String:AnyObject] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
