//
//  YapilacakView.swift
//  SwiftUI_Veri_Islemleri
//
//  Created by Tayfur Salih Şen on 18.10.2022.
//

import SwiftUI

struct YapilacakView: View {
    var body: some View {
        NavigationView {
            List(yapilacaklarDizisi) {yapilacak in
                NavigationLink(destination: {
                    DetayView(secilenYapilacak: yapilacak)
                }, label: {
                    Text(yapilacak.isim)
                })
            }.navigationTitle("Yapılacaklar")
        }
    }
}

struct YapilacakView_Previews: PreviewProvider {
    static var previews: some View {
        YapilacakView()
    }
}
