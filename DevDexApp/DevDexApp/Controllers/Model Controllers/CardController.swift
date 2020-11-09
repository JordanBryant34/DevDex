//
//  CardController.swift
//  DevDexApp
//
//  Created by Jordan Bryant on 11/9/20.
//

import UIKit

class CardController {
    
    static let shared = CardController()
    
    var userDeck: [Card] = []
    
    private var deck: [Card] = [
        Card(name: "OG", powerLevel: 100, description: "Quiet and slow", strength: "Unknown", weakness: "Camera Game"),
        Card(name: "Kaleb", powerLevel: 100, description: "Low ego but high skill", strength: "Everthing except:", weakness: "coding"),
        Card(name: "Jordan", powerLevel: 101, description: "Arizona boy, coding man", strength: "TLDR: Everything", weakness: "Beard Game"),
        Card(name: "Shean", powerLevel: 50, description: "Rugged and Wise", strength: "Construction Work", weakness: "Typing Speed"),
        Card(name: "Shean", powerLevel: 50, description: "Rugged and Wise", strength: "Construction Work", weakness: "Typing Speed"),
        Card(name: "Shean", powerLevel: 50, description: "Rugged and Wise", strength: "Construction Work", weakness: "Typing Speed"),
        Card(name: "Shean", powerLevel: 50, description: "Rugged and Wise", strength: "Construction Work", weakness: "Typing Speed"),
        Card(name: "Shean", powerLevel: 50, description: "Rugged and Wise", strength: "Construction Work", weakness: "Typing Speed"),
        Card(name: "Clarissa", powerLevel: 55, description: "Big Glasses even bigger heart", strength: "Asking Questions", weakness: "Asking Questions"),
        Card(name: "Clarissa", powerLevel: 55, description: "Big Glasses even bigger heart", strength: "Asking Questions", weakness: "Asking Questions"),
        Card(name: "Clarissa", powerLevel: 55, description: "Big Glasses even bigger heart", strength: "Asking Questions", weakness: "Asking Questions"),
        Card(name: "Clarissa", powerLevel: 55, description: "Big Glasses even bigger heart", strength: "Asking Questions", weakness: "Asking Questions"),
        Card(name: "Clarissa", powerLevel: 55, description: "Big Glasses even bigger heart", strength: "Asking Questions", weakness: "Asking Questions"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Alex", powerLevel: 1, description: "The power level couldn't be set to 0", strength: "N/A", weakness: "TLDR: Everything"),
        Card(name: "Owen", powerLevel: 70, description: "see his screen through reflection in his glasses", strength: "Trivia", weakness: "Vision"),
        Card(name: "Owen", powerLevel: 70, description: "see his screen through reflection in his glasses", strength: "Trivia", weakness: "Vision"),
        Card(name: "Owen", powerLevel: 70, description: "see his screen through reflection in his glasses", strength: "Trivia", weakness: "Vision"),
        Card(name: "Deven", powerLevel: 85, description: "Viking Warrior.", strength: "Beard Game", weakness: "Hair Game"),
        Card(name: "Deven", powerLevel: 85, description: "Viking Warrior.", strength: "Beard Game", weakness: "Hair Game"),
        Card(name: "Deven", powerLevel: 85, description: "Viking Warrior.", strength: "Beard Game", weakness: "Hair Game"),
        Card(name: "Trevor", powerLevel: 90, description: "Has his hammer on his wall to flex", strength: "Hair Game", weakness: "Hat Hair"),
        Card(name: "Trevor", powerLevel: 90, description: "Has his hammer on his wall to flex", strength: "Hair Game", weakness: "Hat Hair"),
        Card(name: "Trevor", powerLevel: 90, description: "Has his hammer on his wall to flex", strength: "Hair Game", weakness: "Hat Hair"),
        Card(name: "Trevor", powerLevel: 90, description: "Has his hammer on his wall to flex", strength: "Hair Game", weakness: "Hat Hair"),
        Card(name: "Brenden", powerLevel: 60, description: "Always seen from a side angle", strength: "GOATed at WoW Pvp", weakness: "No one know what his face looks like from straight on"),
        Card(name: "Brenden", powerLevel: 60, description: "Always seen from a side angle", strength: "GOATed at WoW Pvp", weakness: "No one know what his face looks like from straight on"),
        Card(name: "Brenden", powerLevel: 60, description: "Always seen from a side angle", strength: "GOATed at WoW Pvp", weakness: "No one know what his face looks like from straight on"),
        Card(name: "Brenden", powerLevel: 60, description: "Always seen from a side angle", strength: "GOATed at WoW Pvp", weakness: "No one know what his face looks like from straight on"),
        Card(name: "Brenden", powerLevel: 60, description: "Always seen from a side angle", strength: "GOATed at WoW Pvp", weakness: "No one know what his face looks like from straight on"),
        Card(name: "Brenden", powerLevel: 60, description: "Always seen from a side angle", strength: "GOATed at WoW Pvp", weakness: "No one know what his face looks like from straight on"),
        Card(name: "Jason", powerLevel: 71, description: "The only person who enjoyed objective C", strength: "Objective C", weakness: "Modern Languages"),
        Card(name: "Jason", powerLevel: 71, description: "The only person who enjoyed objective C", strength: "Objective C", weakness: "Modern Languages"),
        Card(name: "Jason", powerLevel: 71, description: "The only person who enjoyed objective C", strength: "Objective C", weakness: "Modern Languages"),
        Card(name: "Jason", powerLevel: 71, description: "The only person who enjoyed objective C", strength: "Objective C", weakness: "Modern Languages"),
        Card(name: "Jason", powerLevel: 71, description: "The only person who enjoyed objective C", strength: "Objective C", weakness: "Modern Languages"),
        Card(name: "Laura", powerLevel: 89, description: "Only sent 25 messages in IOS36 channel", strength: "Intelligence", weakness: "sight"),
        Card(name: "Laura", powerLevel: 89, description: "Only sent 25 messages in IOS36 channel", strength: "Intelligence", weakness: "sight"),
        Card(name: "Laura", powerLevel: 89, description: "Only sent 25 messages in IOS36 channel", strength: "Intelligence", weakness: "sight"),
        Card(name: "Laura", powerLevel: 89, description: "Only sent 25 messages in IOS36 channel", strength: "Intelligence", weakness: "sight"),
        Card(name: "Austin", powerLevel: 95 , description: "Lives in utah...Mormon??????", strength: "Mormon????", weakness: "Talking before he unmutes"),
        Card(name: "Austin", powerLevel: 95 , description: "Lives in utah...Mormon??????", strength: "Mormon????", weakness: "Talking before he unmutes"),
        Card(name: "Austin", powerLevel: 95 , description: "Lives in utah...Mormon??????", strength: "Mormon????", weakness: "Talking before he unmutes"),
        Card(name: "Cameron", powerLevel: 95, description: "Flordia Man", strength: "yelling", weakness: "lawn guys"),
        Card(name: "Cameron", powerLevel: 95, description: "Flordia Man", strength: "yelling", weakness: "lawn guys"),
        Card(name: "Cameron", powerLevel: 95, description: "Flordia Man", strength: "yelling", weakness: "lawn guys")
    ]
    
    func drawCard () -> Card? {
        deck.shuffle()
        if let card = deck.randomElement() {
            userDeck.append(card)
            saveToPersistence()
            return card
        }
        saveToPersistence()
        return nil
    }
    
    private func fileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileName = "DevDexApp.json"
        let documentsDirectoryURL = urls[0].appendingPathComponent(fileName)
        return documentsDirectoryURL
    }

    private func saveToPersistence() {
        let jsonEncode = JSONEncoder()
        do {
            let jsonEntries = try jsonEncode.encode(userDeck)
            try jsonEntries.write(to: fileURL())
        } catch {
            print(error.localizedDescription)
        }

    }

    func loadFromPersistence() {
        let jsonDecoder = JSONDecoder()
        do {
            let jsonData = try Data(contentsOf: fileURL())
            let cards = try jsonDecoder.decode([Card].self, from: jsonData)
            self.userDeck = cards
        }catch{
            print(error.localizedDescription)
        }
    }
}
