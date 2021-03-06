//
// JobsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Alamofire

extension SmartRecruitersClientAPI {
    
    public class JobsAPI: APIBase {
    
        /**
         
         Find and list jobs
         
         - GET /jobs
         - Find jobs by params. Returns a list of jobs.
         - examples: [{contentType=application/json, example={
  "offset" : "",
  "limit" : "",
  "totalFound" : "",
  "content" : [ {
    "refNumber" : "aeiou",
    "location" : {
      "country" : "aeiou",
      "regionCode" : "aeiou",
      "address" : "aeiou",
      "city" : "aeiou",
      "countryCode" : "aeiou",
      "postalCode" : "aeiou",
      "region" : "aeiou"
    },
    "id" : "aeiou",
    "updatedOn" : "2016-01-27T15:58:18.906+0000",
    "title" : "aeiou",
    "actions" : { },
    "createdOn" : "2016-01-27T15:58:18.906+0000",
    "status" : "aeiou"
  } ]
}}]
         
         - parameter q: (query) full-text search query based on a job title, location; case insensitive; e.g. java developer
         - parameter limit: (query) number of elements to return. max value is 100
         - parameter offset: (query) number of elements to skip while processing result
         - parameter city: (query) city filter (part of the location object); can be used repeatedly; case insensitive; e.g. San Francisco; part of the Location object
         - parameter department: (query) department filter (department id); can be used repeatedly; case insensitive; e.g. “Marketing”; part of the Department object
         - parameter updatedAfter: (query) ISO8601-formatted time boundaries for the job update time, Format: yyyy-MM-ddTHH:mm:ss.SSSZZ

         - returns: RequestBuilder<JobList> 
         */
        public class func findJobs(q q: String?, limit: Int?, offset: Int?, city: String?, department: String?, updatedAfter: String?) -> RequestBuilder<JobList> {
            let path = "/jobs"
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "q": q,
                "limit": limit,
                "offset": offset,
                "city": city,
                "department": department,
                "updatedAfter": updatedAfter
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<JobList>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Create a new job
         
         - POST /jobs
         - Enables you to create a new jobs. This operation requires passing an instance of the Job object as part of the POST request. Returns a created job.
         - examples: [{contentType=application/json, example={
  "template" : true,
  "creator" : {
    "firstName" : "aeiou",
    "lastName" : "aeiou"
  },
  "jobAd" : {
    "sections" : {
      "additionalInformation" : {
        "text" : "aeiou",
        "title" : "aeiou"
      },
      "qualifications" : "",
      "companyDescription" : "",
      "jobDescription" : ""
    }
  },
  "industry" : "",
  "updatedOn" : "2016-01-27T15:58:18.930+0000",
  "targetHiringDate" : "2016-01-27T15:58:18.930+0000",
  "title" : "aeiou",
  "createdOn" : "2016-01-27T15:58:18.930+0000",
  "typeOfEmployment" : "",
  "eeoCategory" : {
    "id" : "aeiou",
    "label" : "aeiou"
  },
  "experienceLevel" : "",
  "refNumber" : "aeiou",
  "function" : "",
  "compensation" : {
    "min" : "",
    "max" : "",
    "currency" : "aeiou"
  },
  "location" : {
    "country" : "aeiou",
    "regionCode" : "aeiou",
    "address" : "aeiou",
    "city" : "aeiou",
    "countryCode" : "aeiou",
    "postalCode" : "aeiou",
    "region" : "aeiou"
  },
  "id" : "aeiou",
  "department" : {
    "description" : "aeiou",
    "id" : "aeiou",
    "label" : "aeiou"
  },
  "actions" : { },
  "properties" : [ {
    "id" : "aeiou",
    "label" : "aeiou",
    "value" : {
      "id" : "aeiou",
      "label" : "aeiou"
    }
  } ],
  "status" : "aeiou"
}}]
         
         - parameter job: (body) Job object that needs to be created

         - returns: RequestBuilder<JobDetails> 
         */
        public class func createJob(job job: Job?) -> RequestBuilder<JobDetails> {
            let path = "/jobs"
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let parameters = job?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<JobDetails>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Get content of a job with a given id.
         
         - GET /jobs/{id}
         - Get content of a job with a given id. Returns a job details.
         - examples: [{contentType=application/json, example={
  "template" : true,
  "creator" : {
    "firstName" : "aeiou",
    "lastName" : "aeiou"
  },
  "jobAd" : {
    "sections" : {
      "additionalInformation" : {
        "text" : "aeiou",
        "title" : "aeiou"
      },
      "qualifications" : "",
      "companyDescription" : "",
      "jobDescription" : ""
    }
  },
  "industry" : "",
  "updatedOn" : "2016-01-27T15:58:18.933+0000",
  "targetHiringDate" : "2016-01-27T15:58:18.933+0000",
  "title" : "aeiou",
  "createdOn" : "2016-01-27T15:58:18.933+0000",
  "typeOfEmployment" : "",
  "eeoCategory" : {
    "id" : "aeiou",
    "label" : "aeiou"
  },
  "experienceLevel" : "",
  "refNumber" : "aeiou",
  "function" : "",
  "compensation" : {
    "min" : "",
    "max" : "",
    "currency" : "aeiou"
  },
  "location" : {
    "country" : "aeiou",
    "regionCode" : "aeiou",
    "address" : "aeiou",
    "city" : "aeiou",
    "countryCode" : "aeiou",
    "postalCode" : "aeiou",
    "region" : "aeiou"
  },
  "id" : "aeiou",
  "department" : {
    "description" : "aeiou",
    "id" : "aeiou",
    "label" : "aeiou"
  },
  "actions" : { },
  "properties" : [ {
    "id" : "aeiou",
    "label" : "aeiou",
    "value" : {
      "id" : "aeiou",
      "label" : "aeiou"
    }
  } ],
  "status" : "aeiou"
}}]
         
         - parameter id: (path) identifier of a job

         - returns: RequestBuilder<JobDetails> 
         */
        public class func getJob(id id: String) -> RequestBuilder<JobDetails> {
            var path = "/jobs/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<JobDetails>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Updates job
         
         - PUT /jobs/{id}
         - Enables you to update job. This operation requires passing an instance of the Job object as part of the PUT request. Returns an updated job.
         - examples: [{contentType=application/json, example={
  "template" : true,
  "creator" : {
    "firstName" : "aeiou",
    "lastName" : "aeiou"
  },
  "jobAd" : {
    "sections" : {
      "additionalInformation" : {
        "text" : "aeiou",
        "title" : "aeiou"
      },
      "qualifications" : "",
      "companyDescription" : "",
      "jobDescription" : ""
    }
  },
  "industry" : "",
  "updatedOn" : "2016-01-27T15:58:18.935+0000",
  "targetHiringDate" : "2016-01-27T15:58:18.935+0000",
  "title" : "aeiou",
  "createdOn" : "2016-01-27T15:58:18.935+0000",
  "typeOfEmployment" : "",
  "eeoCategory" : {
    "id" : "aeiou",
    "label" : "aeiou"
  },
  "experienceLevel" : "",
  "refNumber" : "aeiou",
  "function" : "",
  "compensation" : {
    "min" : "",
    "max" : "",
    "currency" : "aeiou"
  },
  "location" : {
    "country" : "aeiou",
    "regionCode" : "aeiou",
    "address" : "aeiou",
    "city" : "aeiou",
    "countryCode" : "aeiou",
    "postalCode" : "aeiou",
    "region" : "aeiou"
  },
  "id" : "aeiou",
  "department" : {
    "description" : "aeiou",
    "id" : "aeiou",
    "label" : "aeiou"
  },
  "actions" : { },
  "properties" : [ {
    "id" : "aeiou",
    "label" : "aeiou",
    "value" : {
      "id" : "aeiou",
      "label" : "aeiou"
    }
  } ],
  "status" : "aeiou"
}}]
         
         - parameter id: (path) Identifier of a job
         - parameter job: (body) Job object that needs to be updated

         - returns: RequestBuilder<JobDetails> 
         */
        public class func updateJob(id id: String, job: Job?) -> RequestBuilder<JobDetails> {
            var path = "/jobs/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let parameters = job?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<JobDetails>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Update a job
         
         - PATCH /jobs/{id}
         - Update a job. Returns an updated job object.
         - examples: [{contentType=application/json, example={
  "template" : true,
  "creator" : {
    "firstName" : "aeiou",
    "lastName" : "aeiou"
  },
  "jobAd" : {
    "sections" : {
      "additionalInformation" : {
        "text" : "aeiou",
        "title" : "aeiou"
      },
      "qualifications" : "",
      "companyDescription" : "",
      "jobDescription" : ""
    }
  },
  "industry" : "",
  "updatedOn" : "2016-01-27T15:58:18.936+0000",
  "targetHiringDate" : "2016-01-27T15:58:18.936+0000",
  "title" : "aeiou",
  "createdOn" : "2016-01-27T15:58:18.936+0000",
  "typeOfEmployment" : "",
  "eeoCategory" : {
    "id" : "aeiou",
    "label" : "aeiou"
  },
  "experienceLevel" : "",
  "refNumber" : "aeiou",
  "function" : "",
  "compensation" : {
    "min" : "",
    "max" : "",
    "currency" : "aeiou"
  },
  "location" : {
    "country" : "aeiou",
    "regionCode" : "aeiou",
    "address" : "aeiou",
    "city" : "aeiou",
    "countryCode" : "aeiou",
    "postalCode" : "aeiou",
    "region" : "aeiou"
  },
  "id" : "aeiou",
  "department" : {
    "description" : "aeiou",
    "id" : "aeiou",
    "label" : "aeiou"
  },
  "actions" : { },
  "properties" : [ {
    "id" : "aeiou",
    "label" : "aeiou",
    "value" : {
      "id" : "aeiou",
      "label" : "aeiou"
    }
  } ],
  "status" : "aeiou"
}}]
         
         - parameter id: (path) Identifier of a job
         - parameter jSONPatch: (body) patch request

         - returns: RequestBuilder<JobDetails> 
         */
        public class func patchJob(id id: String, jSONPatch: JSONPatch?) -> RequestBuilder<JobDetails> {
            var path = "/jobs/{id}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let parameters = jSONPatch?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<JobDetails>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PATCH", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Get hiring team of a job with a given id.
         
         - GET /jobs/{id}/hiring-team
         - Get hiring team of a job with a given id. Returns a hiring team.
         - examples: [{contentType=application/json, example={
  "totalFound" : "",
  "content" : [ {
    "role" : "aeiou",
    "id" : "aeiou",
    "actions" : { }
  } ]
}}]
         
         - parameter id: (path) identifier of a job

         - returns: RequestBuilder<HiringTeamMemberList> 
         */
        public class func getHiringTeam(id id: String) -> RequestBuilder<HiringTeamMemberList> {
            var path = "/jobs/{id}/hiring-team"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<HiringTeamMemberList>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Add hiring team member of a job with a given id.
         
         - POST /jobs/{id}/hiring-team
         - Add hiring team member of a job with a given id. Returns a hiring team member.
         - examples: [{contentType=application/json, example={
  "role" : "aeiou",
  "id" : "aeiou",
  "actions" : { }
}}]
         
         - parameter id: (path) identifier of a job
         - parameter hiringTeamMember: (body) HiringTeamMember object

         - returns: RequestBuilder<HiringTeamMember> 
         */
        public class func addHiringTeamMember(id id: String, hiringTeamMember: HiringTeamMember?) -> RequestBuilder<HiringTeamMember> {
            var path = "/jobs/{id}/hiring-team"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let parameters = hiringTeamMember?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<HiringTeamMember>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Removes hiring team member of a job with a given id.
         
         - DELETE /jobs/{id}/hiring-team/{userId}
         - Removes hiring team member of a job with a given id. Returns a hiring team member.
         
         - parameter id: (path) identifier of a job
         - parameter userId: (path) identifier of an user

         - returns: RequestBuilder<Void> 
         */
        public class func removeHiringTeamMember(id id: String, userId: String) -> RequestBuilder<Void> {
            var path = "/jobs/{id}/hiring-team/{userId}"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            path = path.stringByReplacingOccurrencesOfString("{userId}", withString: "\(userId)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Void>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Get note of a job with a given id.
         
         - GET /jobs/{id}/note
         - Get note of a job with a given id. Returns a note.
         - examples: [{contentType=application/json, example={
  "content" : "aeiou"
}}]
         
         - parameter id: (path) identifier of a job

         - returns: RequestBuilder<JobNote> 
         */
        public class func getJobNote(id id: String) -> RequestBuilder<JobNote> {
            var path = "/jobs/{id}/note"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<JobNote>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Update note of a job with a given id.
         
         - PUT /jobs/{id}/note
         - Update note of a job with a given id. Note of maximum 20000 characters long is accepted. Returns a note.
         - examples: [{contentType=application/json, example={
  "content" : "aeiou"
}}]
         
         - parameter id: (path) identifier of a job
         - parameter jobNote: (body) JobNote object

         - returns: RequestBuilder<JobNote> 
         */
        public class func updateJobNote(id id: String, jobNote: JobNote?) -> RequestBuilder<JobNote> {
            var path = "/jobs/{id}/note"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let parameters = jobNote?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<JobNote>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "PUT", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Find and list publications for a job
         
         - GET /jobs/{id}/publication
         - Find and list publications for a job
         - examples: [{contentType=application/json, example={
  "content" : [ {
    "publishedOn" : "2016-01-27T15:58:18.941+0000",
    "sourceName" : "aeiou",
    "type" : "aeiou",
    "unpublishedOn" : "2016-01-27T15:58:18.941+0000"
  } ]
}}]
         
         - parameter id: (path) identifier of a job
         - parameter activeOnly: (query) publication status filter; when omitted, defaults to &#39;true&#39; (only active publications are returned); &#39;false&#39; returns active and inactive publications

         - returns: RequestBuilder<PublicationList> 
         */
        public class func findPublications(id id: String, activeOnly: Bool?) -> RequestBuilder<PublicationList> {
            var path = "/jobs/{id}/publication"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "activeOnly": activeOnly
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<PublicationList>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: false)
        }
    
        /**
         
         Publishes a job
         
         - POST /jobs/{id}/publication
         - Publishes a job to internal sources (Career Pages, Job Widget, Facebook App, WordPress Plugin, Posting API) and optionally to all free job aggregators.<br />By default it's set to publish to job aggregators.<br />It reflects a Publish action available in the SmartRecruiters UI.<br />Note: Internal sources depend on a company's payment plan.
         
         - parameter id: (path) identifier of a job
         - parameter publication: (body) Publication object

         - returns: RequestBuilder<Void> 
         */
        public class func publishJob(id id: String, publication: Publication?) -> RequestBuilder<Void> {
            var path = "/jobs/{id}/publication"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let parameters = publication?.encodeToJSON() as? [String:AnyObject]

            let requestBuilder: RequestBuilder<Void>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Unpublishes a job from all sources
         
         - DELETE /jobs/{id}/publication
         - Unpublishes a job from all sources
         
         - parameter id: (path) identifier of a job

         - returns: RequestBuilder<Void> 
         */
        public class func unpublishJob(id id: String) -> RequestBuilder<Void> {
            var path = "/jobs/{id}/publication"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<Void>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "DELETE", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Job status history
         
         - GET /jobs/{id}/status/history
         - Job status history
         - examples: [{contentType=application/json, example={
  "totalFound" : "",
  "content" : [ {
    "actions" : { },
    "changedOn" : "2016-01-27T15:58:18.945+0000",
    "status" : "aeiou"
  } ]
}}]
         
         - parameter id: (path) identifier of a job

         - returns: RequestBuilder<JobStatusHistoryList> 
         */
        public class func jobStatusHistory(id id: String) -> RequestBuilder<JobStatusHistoryList> {
            var path = "/jobs/{id}/status/history"
            path = path.stringByReplacingOccurrencesOfString("{id}", withString: "\(id)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [:]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<JobStatusHistoryList>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "GET", URLString: URLString, parameters: parameters, isBody: true)
        }
    
        /**
         
         Parse a resume, create a candidate and assign to a given Job
         
         - POST /jobs/{jobId}/candidates
         - Parse a resume, create a candidate and assign to a given Job. Returns a created Candidate object.
         - examples: [{contentType=application/json, example={
  "lastName" : "aeiou",
  "internal" : true,
  "education" : [ {
    "institution" : "aeiou",
    "current" : true,
    "major" : "aeiou",
    "endDate" : "aeiou",
    "degree" : "aeiou",
    "description" : "aeiou",
    "location" : "aeiou",
    "startDate" : "aeiou"
  } ],
  "primaryAssignment" : {
    "reasonOfRejection" : {
      "id" : "aeiou",
      "label" : "aeiou"
    },
    "source" : "aeiou",
    "job" : {
      "id" : "aeiou",
      "title" : "aeiou",
      "actions" : "",
      "startsOn" : "2016-01-27T15:58:18.945+0000"
    },
    "actions" : "",
    "subStatus" : "aeiou",
    "status" : "aeiou"
  },
  "updatedOn" : "2016-01-27T15:58:18.945+0000",
  "experience" : [ {
    "current" : true,
    "endDate" : "aeiou",
    "description" : "aeiou",
    "company" : "aeiou",
    "location" : "aeiou",
    "title" : "aeiou",
    "startDate" : "aeiou"
  } ],
  "createdOn" : "2016-01-27T15:58:18.945+0000",
  "tags" : [ "aeiou" ],
  "firstName" : "aeiou",
  "phoneNumber" : "aeiou",
  "web" : {
    "skype" : "aeiou",
    "twitter" : "aeiou",
    "website" : "aeiou",
    "facebook" : "aeiou",
    "linkedin" : "aeiou"
  },
  "averageRating" : 1.3579000000000001069366817318950779736042022705078125,
  "location" : {
    "country" : "aeiou",
    "regionCode" : "aeiou",
    "address" : "aeiou",
    "city" : "aeiou",
    "countryCode" : "aeiou",
    "postalCode" : "aeiou",
    "region" : "aeiou"
  },
  "secondaryAssignments" : [ "" ],
  "id" : "aeiou",
  "actions" : { },
  "email" : "aeiou"
}}]
         
         - parameter file: (form) The resume file to parse.
         - parameter jobId: (path) Identifier of a Job

         - returns: RequestBuilder<CandidateDetails> 
         */
        public class func parseCVandAddCandidateToJob(file file: NSURL, jobId: String) -> RequestBuilder<CandidateDetails> {
            var path = "/jobs/{jobId}/candidates"
            path = path.stringByReplacingOccurrencesOfString("{jobId}", withString: "\(jobId)", options: .LiteralSearch, range: nil)
            let URLString = SmartRecruitersClientAPI.basePath + path
            
            let nillableParameters: [String:AnyObject?] = [
                "file": file
            ]
            let parameters = APIHelper.rejectNil(nillableParameters)

            let requestBuilder: RequestBuilder<CandidateDetails>.Type = SmartRecruitersClientAPI.requestBuilderFactory.getBuilder()

            return requestBuilder.init(method: "POST", URLString: URLString, parameters: parameters, isBody: false)
        }
    
    }
}
