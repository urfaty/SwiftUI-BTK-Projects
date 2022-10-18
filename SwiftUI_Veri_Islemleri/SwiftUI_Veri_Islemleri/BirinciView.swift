//
//  BirinciView.swift
//  SwiftUI_Veri_Islemleri
//
//  Created by Tayfur Salih Şen on 18.10.2022.
//

import SwiftUI

struct BirinciView: View {
    
    @State var numara = 0
    @State var gosterilecek = false
    
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    self.numara -= 1
                }, label: {
                    Text("-")
                        .font(.largeTitle)
                })
                
                Text(String(numara))
                    .font(.largeTitle)
                
                Button(action: {
                    self.numara += 1
                }, label: {
                    Text("+")
                        .font(.largeTitle)
                })
            }
            
            Button(action: {
                if self.numara > 10 {
                    self.gosterilecek.toggle()
                }
            }, label: {
                Text("Ikinci View'a git")
            })
            .padding()
            .font(.largeTitle)
            .sheet(isPresented: self.$gosterilecek, content: {
                IkinciView()
            })
            
            
            
        }
    }
}

struct BirinciView_Previews: PreviewProvider {
    static var previews: some View {
        BirinciView()
    }
}
