//
//  MarketDataModel.swift
//  Crypto
//
//  Created by Summer Crow on 2022-05-10.
//

import Foundation

//JSON Data
/*
 URL: https://api.coingecko.com/api/v3/global
 
 {
   "data": {
     "active_cryptocurrencies": 13433,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 804,
     "total_market_cap": {
       "btc": 48411165.056782976,
       "eth": 642569363.4188458,
       "ltc": 18685076245.562374,
       "bch": 6487532884.622363,
       "bnb": 4717107854.792359,
       "eos": 866584024432.9183,
       "xrp": 2924477569889.2495,
       "xlm": 10091948809446.676,
       "link": 170311820942.19916,
       "dot": 129546732750.04355,
       "yfi": 106753181.8550933,
       "usd": 1517589113040.9521,
       "aed": 5574104812199.399,
       "ars": 177462695991358.97,
       "aud": 2193324499815.5862,
       "bdt": 131497650382573.88,
       "bhd": 572102261423.2926,
       "bmd": 1517589113040.9521,
       "brl": 7812700512846.105,
       "cad": 1980074395240.185,
       "chf": 1511558213905.7302,
       "clp": 1318177903587369.5,
       "cny": 10220507399596.922,
       "czk": 36068538932055.19,
       "dkk": 10720021856154.344,
       "eur": 1441066199604.9773,
       "gbp": 1233001697028.8354,
       "hkd": 11912933401583.973,
       "huf": 547065337261668.6,
       "idr": 22048293428815492,
       "ils": 5254515720884.107,
       "inr": 117324286208184.56,
       "jpy": 197726685538105.66,
       "krw": 1937764711894771.5,
       "kwd": 465625174074.112,
       "lkr": 545822759577338.94,
       "mmk": 2807354327786337.5,
       "mxn": 30974373194444.125,
       "myr": 6650075493345.451,
       "ngn": 628782697206257.6,
       "nok": 14793018573080.406,
       "nzd": 2416539094507.215,
       "php": 79449587075654.83,
       "pkr": 284851476517787,
       "pln": 6745835366378.331,
       "rub": 106157176528971.9,
       "sar": 5692598170145.669,
       "sek": 15275986755538.36,
       "sgd": 2111842105158.191,
       "thb": 52491524091997.19,
       "try": 23120621896090.227,
       "twd": 45072850416461.07,
       "uah": 45864945430889.04,
       "vef": 151956197888.7908,
       "vnd": 34819069244243700,
       "zar": 24546547109114.39,
       "xdr": 1105115980061.9873,
       "xag": 70567499183.23485,
       "xau": 823641139.3207165,
       "bits": 48411165056782.98,
       "sats": 4841116505678298
     },
     "total_volume": {
       "btc": 7796279.608192092,
       "eth": 103481302.69113219,
       "ltc": 3009100870.4278584,
       "bch": 1044771805.7710798,
       "bnb": 759657234.7479103,
       "eos": 139557297382.67856,
       "xrp": 470966662669.6513,
       "xlm": 1625237785905.8284,
       "link": 27427527825.209606,
       "dot": 20862595429.431103,
       "yfi": 17191853.446003236,
       "usd": 244397114627.12997,
       "aed": 897670602025.4456,
       "ars": 28579126248034.242,
       "aud": 353219573460.0379,
       "bdt": 21176777071990.59,
       "bhd": 92133068669.25032,
       "bmd": 244397114627.12997,
       "brl": 1258180785811.9246,
       "cad": 318877135309.7483,
       "chf": 243425880493.6022,
       "clp": 212283333765124.84,
       "cny": 1645941247879.336,
       "czk": 5808585978945.883,
       "dkk": 1726384558158.8542,
       "eur": 232073634519.1719,
       "gbp": 198566301309.56296,
       "hkd": 1918494620891.3118,
       "huf": 88101047108435.36,
       "idr": 3550723479860261,
       "ils": 846203013656.1185,
       "inr": 18894255881627.51,
       "jpy": 31842500064768.766,
       "krw": 312063456665410.5,
       "kwd": 74985678312.78142,
       "lkr": 87900938661332.89,
       "mmk": 452104783535339.1,
       "mxn": 4988206208818.385,
       "myr": 1070948156296.0834,
       "ngn": 101261056503458.75,
       "nok": 2382312198222.019,
       "nzd": 389166723064.96936,
       "php": 12794800432311.076,
       "pkr": 45873338415512.34,
       "pln": 1086369614229.0547,
       "rub": 17095870955911.045,
       "sar": 916753128735.537,
       "sek": 2460090846760.7607,
       "sgd": 340097403581.47797,
       "thb": 8453392898133.164,
       "try": 3723414481055.7905,
       "twd": 7258667379163.033,
       "uah": 7386228742362.867,
       "vef": 24471483087.61457,
       "vnd": 5607367622876305,
       "zar": 3953049765562.327,
       "xdr": 177971200857.04932,
       "xag": 11364402286.911734,
       "xau": 132641646.02158235,
       "bits": 7796279608192.092,
       "sats": 779627960819209.1
     },
     "market_cap_percentage": {
       "btc": 39.32197247819137,
       "eth": 18.780553303217022,
       "usdt": 5.4820136023351225,
       "bnb": 3.563242095644707,
       "usdc": 3.2006086659597996,
       "xrp": 1.6508849431655366,
       "sol": 1.5455309653649414,
       "ada": 1.4809654376863466,
       "busd": 1.1381147253374075,
       "ust": 1.0596071118975559
     },
     "market_cap_change_percentage_24h_usd": -1.5130545924452212,
     "updated_at": 1652203524
   }
 }
*/


struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {

    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
//        if let item = totalMarketCap.first(where: { (key,value) -> Bool in
//            return key == "usd"
//        }) {
//                return "\(item.value)"
//            }
        if let item = totalMarketCap.first(where: {$0.key == "usd"}){
            return "$" + item.value.formattedWithAbbreviations()
        }
       return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd"}) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc"}) {
            return item.value.asPercentString()
        }
        return ""
    }
}
