//
//  EmojiTheme.swift
//  Memorize
//
//  Created by 임주민 on 2022/08/08.
//

import Foundation

enum EmojiTheme: String, CaseIterable {
  case vehicles
  case faces
  case sports
  case hearts
  case flags
  case foods
  
  var content: [String] {
    switch self {
    case .vehicles:
      return ["🚗", "🚕", "🚙", "🚌", "🚜", "🚚", "🚛", "🛻", "🚎", "🚐", "🚒", "🚑", "🚓", "🏎", "🚞"]
    case .faces:
      return ["😓", "🫡", "🫥", "😡", "😈", "💀", "👹" ,"💩", "👻", "🤖", "🎃"]
    case .sports:
      return  ["⚽️", "⚾️", "🏈", "🏀", "🏓"]
    case .hearts:
      return ["❤️", "🧡", "💛", "💔", "❤️‍🔥", "❤️‍🩹", "💚", "💙", "💝", "💖", "💜", "🤍", "🖤"]
    case .flags:
      return ["🏴󠁧󠁢󠁳󠁣󠁴󠁿", "🇧🇬", "🇮🇸", "🇰🇷", "🇭🇰", "🇵🇷", "🇩🇰", "🇦🇪", "🇯🇵", "🇲🇱", "🇺🇸", "🇬🇧", "🇨🇳" ,"🇵🇭", "🇨🇦", "🇹🇷"]
    case .foods:
      return ["🍟", "🍮", "🍡", "🍭", "🥐", "🥝", "🍬", "🍅", "🍋", "🍇", "🍓", "🌽"]
    }
  }
  
  enum themColor {
    case pink
    case yellow
    case orange
    case green
    case black
    case blue
  }
  
  var color: themColor {
    switch self {
    case .vehicles:
      return .pink
    case .faces:
      return .yellow
    case .sports:
      return .orange
    case .hearts:
      return .green
    case .flags:
      return .black
    case .foods:
      return .blue
    }
  }
  
  var numberOfCardPairsToShow: Int {
    switch self {
    case .vehicles:
      return 5
    case .faces:
      return 6
    case .sports:
      return 6
    case .hearts:
      return 4
    case .flags:
      return 6
    case .foods:
      return 5
    }
  }
}
