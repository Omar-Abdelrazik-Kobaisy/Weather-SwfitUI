//
//  ContentView.swift
//  Weather-SwfitUI
//
//  Created by Omar on 24/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            
            backgroundView(backgroundColor: isNight ? .black : Color("weatherColor"))
            
            VStack {
                Text("Cupertino, CA")
                    .foregroundColor(.white)
                    .font(.system(size: 30,weight: .semibold))
                    .padding()
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" :"cloud.sun.fill",
                                      temperature: 76)
                HStack{
                    ForEach(MockData().WeatherDayData){weatherDayModel in
                        WeatherDayView(weatherDayModel: weatherDayModel)
                    }
                }
                
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Time of Day"
                                  , textColor: .blue
                                  , backgroundColor: .white)
                }
                Spacer()

                    
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    //MARK: properties
    var weatherDayModel : WeatherDayModel
    
    var body: some View {
        VStack{
            Text(weatherDayModel.dayOfTheWeek)
                .foregroundColor(.white)
                .font(.system(size: 20))
            
            Image(systemName: weatherDayModel.imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50 , height: 50)
            
            Text("\(weatherDayModel.temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 35))
        }
        .padding(6)
    }
}

struct MainWeatherStatusView: View {
    //MARK: properties
    var imageName : String
    var temperature : Int
    
    var body: some View {
        VStack(spacing:6){
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180 , height: 180)
            
            Text("\(temperature)°")
                .foregroundColor(.white)
                .font(.system(size: 80,weight: .medium))
        }
    }
}
struct backgroundView : View {
    //MARK: properties
    var backgroundColor : Color
    var body: some View{
        ContainerRelativeShape()
            .fill(backgroundColor.gradient)
            .ignoresSafeArea()
    }
}
