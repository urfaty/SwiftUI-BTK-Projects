//
//  ContentView.swift
//  SwiftUI_Veri_Islemleri
//
//  Created by Tayfur Salih Şen on 18.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var isim = "Tayfur Salih Şen"
    
    var body: some View {
        VStack{
            Text(isim)
                .font(.largeTitle)
                .padding()
        
            Button(action: {
                self.isim = "Tayfur Şen"
            }, label: {
                Text("İsmi Değiştir")
            })
            
            TextField("Değiştirmek İstediğiniz İsmi Giriniz", text: self.$isim)
                .frame(width:
                        UIScreen.main.bounds.width * 0.70, height: 70, alignment:
                        .center)
                .foregroundColor(.green)
                .multilineTextAlignment(.center)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
