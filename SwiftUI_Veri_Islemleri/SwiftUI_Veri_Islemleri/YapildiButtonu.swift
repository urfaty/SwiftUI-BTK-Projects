//
//  YapildiButtonu.swift
//  SwiftUI_Veri_Islemleri
//
//  Created by Tayfur Salih Şen on 18.10.2022.
//

import SwiftUI

struct YapildiButtonu: View {
    
    @Binding var yapildiYapilmadi : Bool
    var body: some View {
        
        Button(action: {
            self.yapildiYapilmadi.toggle()
        }, label: {
            Text("Yapıldı/Yapılmadı")
                .font(.title)
                .padding()
                
        })
        
    }
}


