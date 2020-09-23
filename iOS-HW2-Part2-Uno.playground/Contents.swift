import UIKit
/*:
 # الواجب الثالث: لعبة UNO
 
 تحتوي لعبة الأونو على ٤ ألوان و١٠ أرقام.
 - تتكرر الأرقام لكل لون مرتين. ماعدا الرقم صفر، يتواجد مرة واحدة للون الواحد.
- توجد هناك ورقتين Action Cards لكل لون.
 1. Draw
 2. Reverse
 3. Pass

*/


//: ![Uno Deck](deck.jpg)

/*:
 ### المطلوب:
#### الجزء الأول:
 -- قم بإنشاء struct باسم Card به  الصفات التالية
 * color: String
 * number: Int
 
 -- قم بإنشاء مصفوفة من نوع `Card` فارغة، ثم قم بملئها بالأرقام فقط مرة واحدة من دون ال action cards ومن دون تكرار كل رقم مرتين (تكرار الأرقام بونص 🎁)
 
 - Green: 0 -> 9
 - Red: 0 -> 9
 - Blue: 0 -> 9
 - Yellow: 0 -> 9
 
 #### الجزء الثاني:
-- قم بإنشاء دالة بداخل الستركت Card باسم  `imageName`والتي تقوم بإرجاع اسم الصورة للكرت. قم بفتح المجلد Resources الموجود بداخل الplayground من النافذة اليسرى لرؤية طريقة تسمية الكرت
 ###### مثال على تسمية الكروت موضحة كالتالي، قم بتشغيل الكود لرؤية الصور أسفل هذه الأكواد:
 */


var blue_5 = UIImage(named: "Blue_6.png")
var red_9 = UIImage(named: "Red_9.png")

var green_Skip = UIImage(named: "Green_Skip.png")
var wild_Draw = UIImage(named: "Wild_Draw.png")


/*:
 
 
 ### الجزء الثالث (تجريب الكود😍):
 قم بإزالة الملاحظة عن الأسطر الأخيرة لتجربة الكود إن كان يعمل بشكل مناسب،
 الجزء الأول سيظهر كرت عشوائي
 الجزء الثاني سيظهر مجموعة الكروت كاملة 🃏🎴
 ```
 let randomCard = cards.randomElement()!
 let randomCardImage = UIImage(named: randomCard.imageName())
```

 ```
 let cardImages = cards.map{UIImage(named: $0.imageName())}
 randomCardImage
 ```
 إن تم ذلك بالشكل الصحيح من دون أي خطأ، فقد نجحت في المهمة! 🎉
 
  #### الجزء الرابع (بونص 🎁):
 -- قم بتعبئة مجموعة الكروت كل رقم يعرض مرتين، إلا الصفر، يعرض مرة واحدة، كما هو موضح في صورة مجموعة الأونو في بداية الملف
 -- قم باستعمال For Loop لتعبئة جميع الكروت

 
 #### الجزء الخامس (إكسترا إكسترا بونص 🌶🔥)
 -- قم بتعبئة المصفوفة أيضاً ب Action Cards من خلال تحويلك للصفات إلى optional بإضافة علامة الاستفهام إليها
اسم ال Action Cards موضح في الصور بداخل ال Resources
 
 ```
 var color: String?
 var action: String?
 var number: Int?
 ```
  لا تنسى إزالة كلمة  Optional بسبب تحويلك للمتغيرات إلى متغيرات بعلامة الاستفهام. ربما ستضطر إلى كتابة بعض أوامر if
  
 */


//: ---

//: # الحل ...



/// قم بإنشاء الستركت هنا

// struct ...
struct Card{
    var color: String
    var number: Int
    
    func imageName() -> String {
        return"\(color)_\(number).png"
    }
}

var cards: [Card] = []
var colors = ["Yellow", "Red", "Green", "Blue"]
for _ in 1...2 {
    for color in colors {
        for i in 1...9 {
            cards.append(Card(color: color, number: i))
        }
    }
}

//var cardRed = [Card(color: "red" , number: 0) , Card(color: "red", number: 1) , Card(color: "red", number: 1) , Card(color: "red", number: 2) , Card(color: "red", number: 2) , Card(color: "red", number: 3) , Card(color: "red", number: 3) , Card(color: "red", number: 4) , Card(color: "red", number: 4) , Card(color: "red", number: 5) , Card(color: "red", number: 5) , Card(color: "red", number: 6) , Card(color: "red", number: 6) , Card(color: "red", number: 7) , Card(color: "red", number: 7) , Card(color: "red", number: 8) , Card(color: "red", number: 8) , Card(color: "red", number: 9) , Card(color: "red", number: 9)]
//
//
//var cardYellow = [Card(color: "yellow" , number: 0) , Card(color: "yellow", number: 1) , Card(color: "yellow", number: 1) , Card(color: "yellow", number: 2) , Card(color: "yellow", number: 2) , Card(color: "yellow", number: 3) , Card(color: "yellow", number: 3) , Card(color: "yellow", number: 4) , Card(color: "yellow", number: 4) , Card(color: "yellow", number: 5) , Card(color: "yellow", number: 5) , Card(color: "yellow", number: 6) , Card(color: "yellow", number: 6) , Card(color: "yellow", number: 7) , Card(color: "yellow", number: 7) , Card(color: "yeelow", number: 8) , Card(color: "yellow", number: 8) , Card(color: "yellow", number: 9) , Card(color: "yellow", number: 9)]
//
//
//var cardGreen = [Card(color: "green" , number: 0) , Card(color: "green", number: 1) , Card(color: "green", number: 1) , Card(color: "green", number: 2) , Card(color: "green", number: 2) , Card(color: "green", number: 3) , Card(color: "green", number: 3) , Card(color: "green", number: 4) , Card(color: "green", number: 4) , Card(color: "green", number: 5) , Card(color: "green", number: 5) , Card(color: "green", number: 6) , Card(color: "green", number: 6) , Card(color: "green", number: 7) , Card(color: "green", number: 7) , Card(color: "green", number: 8) , Card(color: "green", number: 8) , Card(color: "green", number: 9) , Card(color: "green", number: 9)]
//
//
//
//var cardBlue = [Card(color: "blue" , number: 0) , Card(color: "blue", number: 1) , Card(color: "blue", number: 1) , Card(color: "blue", number: 2) , Card(color: "blue", number: 2) , Card(color: "blue", number: 3) , Card(color: "blue", number: 3) , Card(color: "blue", number: 4) , Card(color: "blue", number: 4) , Card(color: "blue", number: 5) , Card(color: "blue", number: 5) , Card(color: "blue", number: 6) , Card(color: "blue", number: 6) , Card(color: "blue", number: 7) , Card(color: "blue", number: 7) , Card(color: "blue", number: 8) , Card(color: "blue", number: 8) , Card(color: "blue", number: 9) , Card(color: "blue", number: 9)]
//

// لا تقم بإزالة الملاحظات إلا عند وصولك للمطلوب الثالث


let randomCard = cards.randomElement()!
let randomCardImage = UIImage(named: randomCard.imageName())


let cardImages = cards.map{UIImage(named: $0.imageName())}
randomCardImage
cardImages
