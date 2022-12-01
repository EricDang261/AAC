//
//  HeaderView.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/19/22.
//

import SwiftUI
import AVFoundation

struct CardFront : View {
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double

    var body: some View {
        VStack{
            Text("Emergency Info Card")
                .fontWeight(.medium)
                .font(.system(size:30))
                .padding(.bottom, 40)
            
            ZStack(alignment: .center) {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
                    .frame(width: width, height: height)
                    .shadow(color: .gray, radius: 2, x: 0, y: 0)
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue.opacity(0.2))
                    .frame(width: width, height: height)
                    .shadow(color: .gray, radius: 2, x: 0, y: 0)

                RoundedRectangle(cornerRadius: 20)
                    .fill(.blue.opacity(0.7))
                    .padding()
                    .frame(width: width, height: height)

                RoundedRectangle(cornerRadius: 20)
                    .stroke(.blue.opacity(0.7), lineWidth: 3)
                    .padding()
                    .frame(width: width, height: height)
                
                VStack{
                    Image("user-profile")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding(5)
                    
                    Text("My name is: ___" ) // need to dynamically replaced
                        .font(.system(size: 20))
                    
                    Text("I have autism spectrume disorder.")
                        .font(.system(size: 20))
                        .padding(.top, 0.5)
                        .padding(.bottom, 9)
                    
                    Text("Please contact ____ ")
                    
                    Text("By phone at ____")
                    
                    Text("He/she will provide confirmation response in case of emegergency ")
                        .padding()
                        .font(.system(size: 20))
                    
                    Text("See the reversed side of this card for more information")
                        .padding()
                        .fontWeight(.medium)
                        .background(Color.orange)
                    
                }
                
            }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))
        }
        
    }
}

struct CardBack : View {
    let width : CGFloat
    let height : CGFloat
    @Binding var degree : Double

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .stroke(.blue.opacity(0.7), lineWidth: 3)
                .frame(width: width, height: height)

            RoundedRectangle(cornerRadius: 20)
                .fill(.blue.opacity(0.2))
                .frame(width: width, height: height)
                .shadow(color: .gray, radius: 2, x: 0, y: 0)

            RoundedRectangle(cornerRadius: 20)
                .fill(.white.opacity(0.7))
                .padding()
                .frame(width: width, height: height)

            RoundedRectangle(cornerRadius: 20)
                .stroke(.blue.opacity(0.7), lineWidth: 3)
                .padding()
                .frame(width: width, height: height)
            
            
            VStack(alignment: .leading, spacing: 8){
                Text("As a person with autism, I might ...")
                    .fontWeight(.medium)
                    .foregroundColor(.blue)
                
                Spacer()
                    .frame(height: 20)
                
                
                Group{
                    Text("Be unreponsive to pain or extreme temperatures")
                    Text("Not recognize dangerous situation")
                    Text("Not resond to any instructions or questions")
                    Text("Have difficulty in conveying my need")
                    Text("Get botherred by sound, lights, or crowds")
                    Text("Get overwhelmed or anxious")
                    Text("Avoid eyes contact")
                    Text("Swings my arms around")
                }
                
                Spacer()
                    .frame(height: 20)
          
                Text("Be aware and be safe")
                    .padding()
                    .background(Rectangle().fill(Color.blue).shadow(radius: 3))
                    .foregroundColor(Color(hue: 0.086, saturation: 0.913, brightness: 1.0, opacity: 0.96))
                    .cornerRadius(25)
                    .frame(width: 150, height: 100)
                
            }
            
        }.rotation3DEffect(Angle(degrees: degree), axis: (x: 0, y: 1, z: 0))

    }
}

struct ProfileView: View {
    //MARK: Variables
    @State var backDegree = -90.0
    @State var frontDegree = 0.0
    @State var isFlipped = false

    let width : CGFloat = 700
    let height : CGFloat = 750
    let durationAndDelay : CGFloat = 0.3

    //MARK: Flip Card Function
    func flipCard () {
        isFlipped = !isFlipped
        if isFlipped {
            withAnimation(.linear(duration: durationAndDelay)){
                frontDegree = 90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)) {
                backDegree = 0
            }
        
        } else {
            withAnimation(.linear(duration: durationAndDelay)){
                backDegree = -90
            }
            withAnimation(.linear(duration: durationAndDelay).delay(durationAndDelay)){
                frontDegree = 0
            }
        }
    }
    //MARK: View Body
    var body: some View {
        ZStack {
            CardBack(width: width, height: height, degree: $backDegree)
            CardFront(width: width, height: height, degree: $frontDegree)
        }.onTapGesture {
            flipCard ()
        }
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
