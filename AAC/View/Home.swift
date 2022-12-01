//
//  Home.swift
//  AAC
//
//  Created by Đặng Thịnh on 11/30/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack(alignment: .top){
            ScrollRefreshable(title: "pull to refresh", tintColor: .primary){
                VStack(spacing: 15){
                    ForEach(samplePhotos.indices, id: \.self){ index in
                        
                        Image("topic-\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getScreenBound().width, height: 250)
                            .cornerRadius(15)
                    }
                }
            } onRefresh: {
                await Task.sleep(2_000_000_000)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View{
    func getScreenBound()->CGRect{
        return UIScreen.main.bounds
    }
    
    func getSafeArea()-> UIEdgeInsets{
        let null = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return null
        }
        
        guard let safeArea = screen.windows.first?.safeAreaInsets else{
            return null    }
        
        return safeArea
    }
}
