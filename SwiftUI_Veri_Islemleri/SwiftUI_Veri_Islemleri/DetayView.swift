//
//  DetayView.swift
//  SwiftUI_Veri_Islemleri
//
//  Created by Tayfur Salih Şen on 18.10.2022.
//

import SwiftUI

struct DetayView: View {
    
    var secilenYapilacak : YapilacakModeli
    @State var yapildi = false
    
    var body: some View {
        VStack {
            Text(secilenYapilacak.isim)
                .font(.largeTitle)
                .bold()
                .padding()
                .foregroundColor(self.yapildi ? .green : .red)
            Text(secilenYapilacak.tanım)
                .font(.title)
                .padding()
            
            YapildiButtonu(yapildiYapilmadi: $yapildi)
            
        }
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenYapilacak: birinciYapilacak)
    }
}
