//
//  PreWorkout.swift
//  Workout_App
//
//  Created by Gerrit VanderStoel on 11/28/23.
//

import Foundation

struct PreWorkout {
    let price: String
    let name: String
    let link: String
    let review: String
    let rating: Int
    let picture: String
    let miniDis: String
}


struct EditorList {
    static let samplePre = [
        PreWorkout(price: "44.99", name: "TotalWar", link: "https://www.amazon.com/Total-War-Servings-Formulated-Strawberry/dp/B07CQCLH2M/ref=sr_1_1_sspa?crid=6D2BGVW57LKC&keywords=total%2Bwar&qid=1701146809&sprefix=totalwa%2Caps%2C164&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1", review: "Total War is great starter pre workout for those with a good tolerance for caffiene. With 250 milligrams of caffiene in one scoop, it is not fitting for those starting out. This being said, the active ingredients such as its citrulline, beta alnine, taurine and green tea extract are at a good dosage. It also only costs 1.50 per serving which is nice for what it provides.", rating: 9, picture: "totalwarr", miniDis: "Jack of all Trades"),
     
        PreWorkout(price: "49.99", name: "Gorilla Mode", link: "https://www.amazon.com/Gorilla-Mode-Pre-Workout-Dimethylamine/dp/B09D667JS7/ref=sr_1_1_sspa?crid=1SJO3834IFMR9&keywords=gorilla%2Bmode&qid=1701394032&sprefix=gorilla%2Bmo%2Caps%2C290&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1", review: "This is Gerrit's personal favorite for those just starting out in the gym who need less caffiene but don't want to sacrifice the other ingredients. Many pre workouts have high caffiene where one would have to half scoop, which results in less effectiveness. It was created by an industry veteran, is priced a little high but tastes great. I would recommend the cherry limade flavor.", rating: 9, picture: "gowilla", miniDis: "Personal Go-To"),
        
        PreWorkout(price: "54.99", name: "Bucked Up WOKE", link: "https://www.amazon.com/Bucked-Up-Nootropic-Strength-Servings/dp/B08B7NGSD4?th=1", review: "This is currently what Gerrit is running as his his preworkout, and it works quite well. One scoop is all you need, which is important to consider due to its price. However, the main reason I like this over other high stim choices is its inclusion of himalaian salt. This helps with pumps along with their own pump formula. Praise aside, the dosages for all other ingredients are the same as totalwar other than the 88 more grams of caffiene. ", rating: 9, picture: "buckedwoke", miniDis: "Current High Stim Stack"),
        
        PreWorkout(price: "54.99", name: "Transparent Labs BULK Black", link: "https://www.amazon.com/Transparent-Labs-Bulk-Black-Workout/dp/B0CHN747PQ/ref=sr_1_3?crid=1C0BNKLGMWXA7&keywords=transparent+labs&qid=1701743045&sprefix=transpar%2Caps%2C294&sr=8-3&ufe=app_do%3Aamzn1.fos.17d9e15d-4e43-4581-b373-0e5c1a776d5d", review: "This pre workout is perfect for those who do not want artificial ingredients without sacrificing the effectiveness or taste. Citrulline, Beta-Alnine, Taurine, and L-Tyrosine are among the active ingredients and are dosed on the higher side of their effective range. Another notable pro is that each product this company produces has certificates of anaylsis, which is a nice addition. This is next on my list to try.", rating: 10, picture: "transparent-labs-bulk-black", miniDis: "Transparent Ingredients"),
        
        PreWorkout(price: "35.99", name: "Legion Athletics Pulse", link: "https://www.amazon.com/Legion-Pulse-Pre-Workout-Supplement/dp/B00QYZ6MLG/ref=sr_1_1_sspa?crid=33MHVO5I4LORI&keywords=legion%2Bathletics%2Bpulse&qid=1701744084&sprefix=legion%2Bathletics%2Bpuls%2Caps%2C165&sr=8-1-spons&sp_csd=d2lkZ2V0TmFtZT1zcF9hdGY&th=1", review: "Another good option for a high stimulant pre workout. While it is high stim, it is underdosed on the beta alnine slightly for a double scoop pre workout. Other choices on this list either hit that goal with one serving or can be safely double scooped to hit that extra effectiveness. Asides that ingredient, there are lots of flavors to choose from and the other dosages are fine.", rating: 7, picture: "legion_pulse",miniDis: "Half Serving Hero"),
        
        PreWorkout(price: "59.99", name: "Kaged Pre-Kaged Elite", link: "https://www.amazon.com/Pre-KAGED-Preworkout-Stimulant-L-Citrulline-Strawberry/dp/B09QT8PLN3/ref=sr_1_5?crid=L6F8LSBJKTQ2&keywords=kaged%2Bpre%2Bkaged%2Belite&qid=1701744340&sprefix=kaged%2Bpre%2Bkaged%2B%2Caps%2C164&sr=8-5&th=1",review: "This preworkout arguably the best pre workout on this list for those who are not adverse to caffiene or expense. This checks all the boxes for its dosages and ingredients. It includes 5g of creatine, which is a daily dose taken seperately in most cases. It also is informed choice certified. One drawback is it is the most expensive on this list and contains artificial sweeteners in the form of sucralose. If those two things are not of concern as well as the caffine, this would be the best bang for your buck.", rating: 11, picture: "kaged", miniDis: "For Gym Rats"),
        
        PreWorkout(price: "59.99", name: "Gorilla Mode Nitric", link: "https://gorillamind.com/products/gorilla-mode-nitric", review: "This version of gorilla mode is very similar to the regular but without the caffine and a higher focus on its pump formula. The Citrulline is up 10%, Glycerpump 30% and 50% for betaine and Agmatine. It is expensive, so only really worth it if you want something with no caffiene. It is very effective to swap to this if high stimulant pre workouts are becoming less impactful over time.", rating: 9, picture: "gowilla_nitric", miniDis: "No Caffiene King"),
        
        PreWorkout(price: "29.99", name: "C4", link: "https://www.amazon.com/Cellucor-Original-Supplement-Citrulline-Watermelon/dp/B01NBZFIQB/ref=asc_df_B01NBZFIQB/?tag=hyprod-20&linkCode=df0&hvadid=632115487651&hvpos=&hvnetw=g&hvrand=5488996548010075958&hvpone=&hvptwo=&hvqmt=&hvdev=c&hvdvcmdl=&hvlocint=&hvlocphy=9031589&hvtargid=pla-404914633602&mcid=124dace0b0e03bb48c785366f64f2879&gclid=CjwKCAiAjrarBhAWEiwA2qWdCEu_RZYuJJ0sNOqdlxU-Dg3kev-xsX52fEMmDc4Q043RNbkfCQYA3hoC3LcQAvD_BwE&th=1", review: "C4 is infamous in the fitness industry for A: Being the most popular and B: being the worst. While it is cheap, everything is underdosed and there isn't much in the preworkout to begin with other than caffiene and a low amount of Beta Alnine. At least it tastes good.", rating: 5, picture: "c4pre", miniDis: "Popular != Good")
    ]
}
