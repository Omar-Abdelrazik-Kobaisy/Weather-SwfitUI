//
//  WeatherDayModel.swift
//  Weather-SwfitUI
//
//  Created by Omar on 24/12/2023.
//

import Foundation

struct WeatherDayModel : Hashable , Identifiable{
    var id = UUID()
    var dayOfTheWeek : String
    var imageName : String
    var temperature : Int
}

struct MockData {
    var WeatherDayData =
    [WeatherDayModel(dayOfTheWeek: "TUE"
                    , imageName: "cloud.sun.fill"
                    , temperature: 74),
     WeatherDayModel(dayOfTheWeek: "MON"
                    , imageName: "wind.snow"
                    , temperature: 50),
     WeatherDayModel(dayOfTheWeek: "WED"
                    , imageName: "cloud.heavyrain.fill"
                    , temperature: 25),
     WeatherDayModel(dayOfTheWeek: "SUN"
                    , imageName: "cloud.bolt.rain.fill"
                    , temperature: 20),
     WeatherDayModel(dayOfTheWeek: "SAT"
                    , imageName: "snowflake"
                    , temperature: 15)
    ]
}
