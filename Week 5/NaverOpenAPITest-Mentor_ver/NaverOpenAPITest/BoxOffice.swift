//
//  BoxOffice.swift
//  NaverOpenAPITest
//
//  Created by Byeongjo Koo on 2022/08/28.
//

import Foundation

struct BoxOffice {
    
    var searchKeyword = ""
    var movies: [Movie] = []
}

extension BoxOffice {
    
    struct Movie: Codable, Identifiable {
        
        let attributedTitle: AttributedString?
        let image: String
        let subtitle: AttributedString?
        let pubDate: String
        let director: String
        let actor: String
        let userRating: String
        let id: Int
        
        
        init(_ movie: MovieFinder.Response.Movie, id: Int) {
            attributedTitle = AttributedString(htmlString: movie.title)
            image = movie.image
            subtitle = AttributedString(htmlString: movie.subtitle)
            pubDate = movie.pubDate
            director = movie.director
            actor = movie.actor
            userRating = movie.userRating
            self.id = id
        }
    }
}

extension AttributedString {
    
    /// HTML형식의 문자열을 기본 문자열로 변환합니다.
    /// - Parameter htmlString: HTML 형식의 문자열.
    init?(htmlString: String) {
        let option: [NSAttributedString.DocumentReadingOptionKey: NSAttributedString.DocumentType] = [.documentType: .html]
        guard let htmlData = htmlString.data(using: .utf16),
              let nsStr = try? NSAttributedString(data: htmlData, options: option, documentAttributes: nil)
        else { return nil }
        self.init(nsStr.string)
    }
}
