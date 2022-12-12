import Foundation

public struct PointsTeam{
    public var teamName: String
    public var teamPoints: Int
    public var isClassificated :Bool
    
    public init(teamName: String, teamPoints: Int, isClassificated: Bool ){
        self.teamName = teamName
        self.teamPoints = teamPoints
        self.isClassificated = isClassificated
    }
}




