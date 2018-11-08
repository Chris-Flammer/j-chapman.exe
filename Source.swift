//
//  Josh.swift
//  JChapmanProgram
//
//  Created by A TERRIBLE PERSON on 10/25/18.
//  Copyright © 2018 illuminati Inc. All rights reserved.
//

import Foundation

enum Tone {
    case smug
    case nasel
    case bad_british_accent
    case condensending
    case high_pitched
    case morally_and_intellectually_superior_to_the_whole_world
}

enum RestingState {
    case arrive_late
    case check_analytics
    case deploy_marketing_jargon
    case bitch_about_tom
    case suck_up_to_craig
}

protocol Hipster {
    func emitDouchbaggery(for input: String) -> String
    func actSuperImportant()
}

class Josh: Hipster {

    // MARK: - PROPERTIES
    
    // the tone of voice used when speaking
    var voiceTone: Tone = .nasel
    
    // the current work action being performed
    var workState: RestingState = .arrive_late // start out by arriving late
    
    
    /*
     Inherited from Hipster protocol.  Returns a string reponse to conversation.  Reponses are hardcoded, and will be the same EVERY time.  Designed to mimic a Non-Playable Character (NPC) in a video game
     @param string: - The subject of the conversation
 */
    func emitDouchbaggery(for input: String) -> String {
        
        if input.contains("poop, feces, fecal matter") {
            voiceTone = .high_pitched
            return "poooooop!" // high pitched nasal voice
        }
        
        if input.contains("beef") {
            voiceTone = .smug
            return "Wagyu....japan.. blah blah blah... like totally best beef... Wagyu... expensive.. Wagyu"
        }
        
        if input.contains("old") || input.contains("greg") {
            voiceTone = .bad_british_accent
            return "OLD GREG!"
        }
        
        if input.contains("snack") {
            voiceTone = .high_pitched
            return "SNNNNAAAAAAAAACKKKKKS"
        }
        
        if input.contains("football") || input.contains("fanstasy") {
            voiceTone = .nasel
            converseWithDevon(about: "Fantasy Football")
            return "huh????"
        }
        
        
        if input.contains("trump, utah, salt, lake, city, news, republican, diversity, inclusion") {
            voiceTone = .morally_and_intellectually_superior_to_the_whole_world
            runSnideRemark(about: input)
        }
        
        return "..." // say nothing, just sit in condensending silence.
    }
    
    
    
    /*
     The hipster eqivalent of a short moral sermon:  Twitter style.  API web service polls from current events randomly, and uses results to launch a left-leaning tirade.  If no results are returned from API web service.  Default to unfavorable remarks about Utah
 */
    func runSnideRemark(about: String) {
        // TODO: - IMPLEMENT
    }
    
    
    /*
     Converse with nearest teamate, which happens to Deven.exe.
     @param subject - Subject param is actually ignored.  Defaults to fantasy f*****ng football instead
 */
    func converseWithDevon(about subject: String) {
        //TODO: - TURN VOLUME UP TO EXTEND TO ENTIRE ROOM
    }
    
    /*
     Performs a random action.  Action is not important.  Neither is order of actions performed.  Actions may be performed consecutively or concurrently.  Due to no work actually being performed, tasks are also THREAD SAFE!, and can be performed on different threads
 */
    func actSuperImportant() {
        let random = arc4random()
        switch random {
        case 0:
            workState = .bitch_about_tom
        case 1:
            workState = .check_analytics
        case 2:
            workState = .deploy_marketing_jargon
        case 3:
            workState = .suck_up_to_craig
        default:
            workState = .arrive_late
        }
    }
    
}
