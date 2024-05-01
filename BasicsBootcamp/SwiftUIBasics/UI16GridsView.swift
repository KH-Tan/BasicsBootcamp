//
//  UI16GridsView.swift
//  BasicsBootcamp
//
//  Created by Kong Hwi Tan on 6/2/24.
//

import SwiftUI

struct UI16GridsView: View {
    
    let myColumns: [GridItem] = [
        GridItem(.fixed(75), spacing: 20, alignment: .topLeading),
        GridItem(.fixed(75), spacing: 10, alignment: .center),
        GridItem(.flexible(minimum: 75, maximum: 75), spacing: nil, alignment: .trailing),
    ]
    
    
    var body: some View {
        ScrollView {
 
            Rectangle()
                .fill(Color.orange)
                .frame(height: 300)
            
            LazyVGrid(
                columns: myColumns,
                //alignment: .center,
                //spacing: 6,
                pinnedViews: [.sectionHeaders]
            
            
            ) {
                
                Section(
                    header:
                        Text("Header 1")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.black),
                    
                    footer: Text("Footer 1")
                        .font(.title3)
                        .foregroundStyle(Color.white)
                    
                )  {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 100)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                }
                
                
                Section(header: Text("Header 2")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.black)
                ) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                }

                Section(header: Text("Header 3")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.black)
                
                
                ) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                }

                
                Section(header: Text("Header A")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.black)
                
                
                ) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                }
                
                Section(header: Text("Header B")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.black)
                
                
                ) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                }

                Section(header: Text("Header C")
                        .font(.title2)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.black)
                
                
                ) {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(height: 150)
                }



            }
            .background(Color.gray)
        }
        .padding(25)

    }
}

#Preview {
    UI16GridsView()
}
