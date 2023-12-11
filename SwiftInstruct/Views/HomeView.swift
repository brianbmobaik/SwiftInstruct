//
//  HomeView.swift
//  SwiftInstruct
//
//  Created by FBI Man on 12/10/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var authModel: AuthorizeModel
    
    var body: some View {
        
        ZStack {
            BackgroundView()
            
            VStack {
                HeaderView()
                
                UserOverviewView()
                
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
}
