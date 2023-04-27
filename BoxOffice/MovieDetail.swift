//
//  MovieDetail.swift
//  BoxOffice
//
//  Created by DONGWOOK SEO on 2023/04/25.
//

import Foundation

struct MovieDetail: Decodable {
    let movieInformationResult: MovieInformationResult

    enum CodingKeys: String, CodingKey {
        case movieInformationResult = "movieInfoResult"
    }
}

struct MovieInformationResult: Decodable {
    let movieInformation: MovieInformation

    enum CodingKeys: String, CodingKey {
        case movieInformation = "movieInfo"
    }
}

struct MovieInformation: Decodable {

    let movieCode: String
    let movieName: String
    let movieEnglishName: String
    let movieOriginalName: String

    let runningTime: String
    let yearOfProduction: String
    let openDate: String

    let nations: [Nation]
    let genres: [Genre]
    let directors: [Director]
    let actors: [Actor]
    let showTypes: [ShowType]
    let companys: [Company]
    let audits: [Audit]

    enum CodingKeys: String, CodingKey {
        case movieCode = "movieCd"
        case movieName = "movieNm"
        case movieEnglishName = "movieNmEn"
        case movieOriginalName = "movieNmOg"
        case runningTime = "showTm"
        case yearOfProduction = "prdtYear"
        case openDate = "openDt"
        case nations
        case genres
        case directors
        case actors
        case showTypes
        case companys
        case audits
    }

}

struct Actor: Decodable {

    let peopleName: String
    let peopleEnglishName: String
    let cast: String
    let castEnglish: String

    enum CodingKeys: String, CodingKey {
        case peopleName = "peopleNm"
        case peopleEnglishName = "peopleNmEn"
        case cast
        case castEnglish = "castEn"
    }

}

struct Audit: Decodable {
    let auditNuber: String
    let movieRating: String

    enum CodingKeys: String, CodingKey {
        case auditNuber = "auditNo"
        case movieRating = "watchGradeNm"
    }
}

struct Company: Decodable {
    let companyCode: String
    let companyName: String
    let companyEnglishName: String
    let companyPartOfMoive: String

    enum CodingKeys: String, CodingKey {
        case companyCode = "companyCd"
        case companyName = "companyNm"
        case companyEnglishName = "companyNmEn"
        case companyPartOfMoive = "companyPartNm"
    }
}

struct Director: Decodable {

    let peopleName: String
    let peopleEnglishName: String

    enum CodingKeys: String, CodingKey {
        case peopleName = "peopleNm"
        case peopleEnglishName = "peopleNmEn"
    }

}

struct Genre: Decodable {

    let genreName: String

    enum CodingKeys: String, CodingKey {
        case genreName = "genreNm"
    }

}

struct Nation: Decodable {
    let nationName: String

    enum CodingKeys: String, CodingKey {
        case nationName = "nationNm"
    }

}

struct ShowType: Decodable {
    let showTypeGroupName: String
    let showTypeName: String

    enum CodingKeys: String, CodingKey {
        case showTypeGroupName = "showTypeGroupNm"
        case showTypeName = "showTypeNm"
    }

}
