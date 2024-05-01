//
//  UI43TabViewPageStyleView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 4/4/24.
//

import SwiftUI

struct UI43TabViewPageStyleView: View {
    @State var selectedPage: Int = 1
    
    @State var selectedTab: Int = 2
    
    var body: some View {
        //Spacer()
        //Text("Hello, World!")
//            .padding()
//            .border(Color.orange)
//            .background(Color.yellow)

        Text("PageTab Style")
        TabView(selection: $selectedPage)  {
 
            Text("Hello")
                .font(.largeTitle)
                .frame(width: 350, height: 200)
                .background(.mint)
                .tag(0)
            Text("Konnichi Wa")
                .font(.largeTitle)
                .frame(width: 325, height: 150)
                .background(.indigo)
                .tag(1)
            Text("Hola")
                .font(.largeTitle)
                .frame(width: 300, height: 100)
                .background(.teal)
                .tag(2)
        }
        .frame(width: 400, height: 300)
        .background(.gray)
        .tabViewStyle(PageTabViewStyle())
        

        
        Text("Default Tab Style")
            .padding(.top, 30)
        
        TabView(selection: $selectedTab ) {
  
            HomeView()
                .tag(0)
//                .tabItem {
//                    Text("Home")
//                    Image(systemName: "house.fill")
//                }
            
            BrowseView()
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
                .tag(1)
            
            ProfileView(selectedTab: $selectedTab)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
                .tag(2)
            
        }
        .accentColor(.orange)
        
    }
}


struct HomeView: View {
    var body: some View {
        ZStack {
            Color.red.opacity(0.5)
            Text("Home View")
        }
        .padding()
        .tabItem {
            Text("Home")
            Image(systemName: "house.fill")
        }
    }
}

struct BrowseView: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.5)
            Text("Browse View")
        }
        .padding()
    }
}

struct ProfileView: View {
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color.blue.opacity(0.5)
            Text("\(Image(systemName: "arrow.left")) Profile View")
                .onTapGesture {
                    selectedTab = 1
                }
        }
        .padding()
    }
}


#Preview {
    UI43TabViewPageStyleView()
}
