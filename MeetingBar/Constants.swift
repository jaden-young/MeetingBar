//
//  Constants.swift
//  MeetingBar
//
//  Created by Andrii Leitsius on 12.06.2020.
//  Copyright © 2020 Andrii Leitsius. All rights reserved.
//

import Cocoa

struct TitleLengthLimits {
    static let min = 5.0
    static let max = 55.0
}

struct LinksRegex {
    let meet = try! NSRegularExpression(pattern: #"https://meet.google.com/[a-z-]+"#)
    let hangouts = try! NSRegularExpression(pattern: #"https://hangouts.google.com/.*"#)
    let zoom = try! NSRegularExpression(pattern: #"https://([a-z0-9.]+)?zoom.(us|com.cn)/j/[a-zA-Z0-9?&=]+"#)
    let teams = try! NSRegularExpression(pattern: #"https://teams.microsoft.com/l/meetup-join/[a-zA-Z0-9_%\/=\-\+\.?]+"#)
    let webex = try! NSRegularExpression(pattern: #"https://([a-z0-9.]+)?webex.com/.*"#)
    let jitsi = try! NSRegularExpression(pattern: #"https://meet.jit.si/.*"#)
    let chime = try! NSRegularExpression(pattern: #"https://app.chime.aws/.*"#)
    let ringcentral = try! NSRegularExpression(pattern: #"https://meetings.ringcentral.com/.*"#)
    let gotomeeting = try! NSRegularExpression(pattern: #"https://([a-z0-9.]+)?gotomeeting.com/.*"#)
    let gotowebinar = try! NSRegularExpression(pattern: #"https://([a-z0-9.]+)?gotowebinar.com/.*"#)
    let bluejeans = try! NSRegularExpression(pattern: #"https://([a-z0-9.]+)?bluejeans.com/.*"#)
    let eight_x_eight = try! NSRegularExpression(pattern: #"https://8x8.vc/.*"#)
    let demio = try! NSRegularExpression(pattern: #"https://event.demio.com/.*"#)
    let join_me = try! NSRegularExpression(pattern: #"https://join.me/.*"#)
    let zoomgov = try! NSRegularExpression(pattern: #"https://([a-z0-9.]+)?zoomgov.com/j/[a-zA-Z0-9?&=]+"#)
    let whereby = try! NSRegularExpression(pattern: #"https://whereby.com/.*"#)
    let uberconference = try! NSRegularExpression(pattern: #"https://uberconference.com/.*"#)
    let blizz = try! NSRegularExpression(pattern: #"https://go.blizz.com/.*"#)
    let vsee = try! NSRegularExpression(pattern: #"https://vsee.com/.*"#)
    let starleaf = try! NSRegularExpression(pattern: #"https://meet.starleaf.com/.*"#)
    let duo = try! NSRegularExpression(pattern: #"https://duo.app.goo.gl/.*"#)
    let voov = try! NSRegularExpression(pattern: #"https://voovmeeting.com/.*"#)
    let skype = try! NSRegularExpression(pattern: #"https://join.skype.com/.*"#)
    let skype4biz = try! NSRegularExpression(pattern: #"https://meet.lync.com/.*"#)
    let skype4biz_selfhosted = try! NSRegularExpression(pattern: #"https://meet\..*"#)
}

struct CreateMeetingLinks {
    static var meet = URL(string: "https://meet.google.com/new")!
    static var hangouts = URL(string: "https://hangouts.google.com/call")!
    static var zoom = URL(string: "https://zoom.us/start?confno=123456789&zc=0")!
    static var teams = URL(string: "https://teams.microsoft.com/l/meeting/new?subject=")!
}

struct Links {
    static var supportTheCreator = URL(string: "https://www.patreon.com/meetingbar")!
    static var aboutThisApp = URL(string: "https://meetingbar.onrender.com")!
}

enum MeetingServices: String, Codable, CaseIterable {
    case meet = "Google Meet"
    case zoom = "Zoom"
    case teams = "Microsoft Teams"
    case hangouts = "Google Hangouts"
    case webex = "Cisco Webex"
    case ringcentral = "Ring Central"
    case gotomeeting = "GoToMeeting"
    case gotowebinar = "GoToWebinar"
    case bluejeans = "BlueJeans"
    case eight_x_eight = "8x8"
    case demio = "Demio"
    case join_me = "Join.me"
    case zoomgov = "ZoomGov"
    case whereby = "Whereby"
    case uberconference = "Uber Conference"
    case blizz = "Blizz"
    case vsee = "VSee"
    case starleaf = "StarLeaf"
    case duo = "Google Duo"
    case voov = "Tencent VooV"
    case skype = "Skype"
    case skype4biz = "Skype For Business"
    case skype4biz_selfhosted = "Skype For Business Self-Hosted"
}

enum TimeFormat: String, Codable, CaseIterable {
    case am_pm = "12-hour"
    case military = "24-hour"
}

enum AuthResult {
    case success(Bool), failure(Error)
}

enum EventTitleFormat: String, Codable, CaseIterable {
    case show
    case dot
}

enum DeclinedEventsAppereance: String, Codable, CaseIterable {
    case strikethrough
    case hide
}

enum ShowEventsForPeriod: String, Codable, CaseIterable {
    case today
    case today_n_tomorrow
}
