//
//  YapilacakModeli.swift
//  SwiftUI_Veri_Islemleri
//
//  Created by Tayfur Salih Şen on 18.10.2022.
//

import Foundation

struct YapilacakModeli : Identifiable {
    
    var id = UUID()
    var isim : String
    var tanım : String
}
var birinciYapilacak = YapilacakModeli(isim: "Yoğurt Al", tanım: "Eve gelirken yoğurt al")
var ikinciYapilacak = YapilacakModeli(isim: "Arabayı Yıkat", tanım: "Arabayı yıkatmayı unutma")
var ucuncuYapilacak = YapilacakModeli(isim: "Bahçeyi Temizle", tanım: "Bahçeyi temizlemeyi unutma")

var yapilacaklarDizisi = [birinciYapilacak,ikinciYapilacak,ucuncuYapilacak]


