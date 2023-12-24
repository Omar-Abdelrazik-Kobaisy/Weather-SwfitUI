//
//  WeatherButton.swift
//  Weather-SwfitUI
//
//  Created by Omar on 24/12/2023.
//

import SwiftUI

struct WeatherButton: View {
    //MARK: properties
    var title : String
    var textColor : Color
    var backgroundColor : Color
    
    var body: some View {
        Text(title)
            .frame(width: 280 , height: 50)
            .background(backgroundColor.gradient)
            .foregroundColor(textColor)
            .font(.system(size: 20,weight: .bold))
            .cornerRadius(10)
    }
}

struct WeatherButton_Previews: PreviewProvider {
    static var previews: some View {
        WeatherButton(title: "Test Title"
                      , textColor: .white
                      , backgroundColor: .blue)
    }
}
