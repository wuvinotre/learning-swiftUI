//
//  TeamView.swift
//  learning-swiftUI
//
//  Created by Vinicius on 21/11/22.
//

import AVKit
import SwiftUI

struct TeamView: View {
    var selectedTeam: Team

    var body: some View {
        ScrollView {
            VStack {
                VideoPlayer(player: AVPlayer(url: URL(string:
                    selectedTeam.video)!))
                    .frame(height: 300)
                    .padding(.horizontal, 5)
                Text("\(selectedTeam.flag) \(selectedTeam.name)")
                    .font(.largeTitle)
                Text(selectedTeam.description)
                    .lineSpacing(8)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView(selectedTeam: Team(
            name: "Tunisia",
            description: "The Tunisia national football team represents Tunisia in men's international association football. The team is a member of both FIFA and CAF, the Confederation of African Football. It is governed by the Tunisian Football Federation, founded in 1957. Colloquially known as the Eagles of Carthage,[4] the team's colours are red and white, and the bald eagle is its symbol. Most of Tunisia's home matches are played at the Stade Olympique de Radès in Radès since 2001.[5] Jalel Kadri has been coaching the team since 30 January 2022.",
            flag: flag(country: "TN"),
            video: "https://ananayarora.com/static/fifa.mp4"))
    }
}
