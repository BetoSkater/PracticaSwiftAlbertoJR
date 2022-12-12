import Foundation

public struct NationalTeam{
    public var nationalTeamID: String
    public var name:String
    public var country: String
    public var team:[Member]
    public var technicalTeam:[Member]
    
    public init(nationalTeamID: String, name: String, country: String, team : [Member], technicalTeam: [Member]) {
        self.nationalTeamID = nationalTeamID
        self.name = name
        self.country = country
        self.team = team
        self.technicalTeam = technicalTeam
    }
}
