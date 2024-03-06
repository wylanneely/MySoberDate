//
//  QuotesController.swift
//  MySoberDate
//
//  Created by Wylan L Neely on 3/2/24.
//

import Foundation
import UIKit


struct Quotes {
    
    let quotes = [
        quote1, quote2, quote3, quote4, quote5,quote71, quote6, quote7, quote8, quote9, quote10,quote11, quote75,quote12, quote13, quote14, quote15, quote16, quote17, quote18, quote19, quote20,quote21, quote22, quote23, quote24,quote76,quote74,quote25, quote26, quote27, quote28, quote29, quote30,quote31, quote32, quote33, quote34, quote35, quote36, quote37, quote38, quote39, quote40,quote41, quote42, quote43, quote44, quote45, quote46, quote47,quote72,quote48, quote49, quote50,quote51,quote52,quote77,quote53, quote54, quote55,quote73, quote56, quote57,quote59,quote60,quote61,quote62,quote63,quote64,quote65,quote66,quote67,quote68,quote69,quote70,quote78,quote79,quote80,quote81,quote82,quote83,quote84,quote85,quote86,quote87,quote88,quote89,quote90]
    
//    let quotes = [
//        quote1, quote2, quote3, quote4, quote5, quote6, quote7, quote8, quote9, quote10,
//        quote11, quote12, quote13, quote14, quote15, quote16, quote17, quote18, quote19, quote20,
//        quote21, quote22, quote23, quote24, quote25, quote26, quote27, quote28, quote29, quote30,
//        quote31, quote32, quote33, quote34, quote35, quote36, quote37, quote38, quote39, quote40,
//        quote41, quote42, quote43, quote44, quote45, quote46, quote47, quote48, quote49, quote50,
//        quote51, quote52, quote53, quote54, quote55, quote56, quote57, quote58, quote59, quote60,
//        quote61, quote62, quote63, quote64, quote65, quote66, quote67, quote68, quote69, quote70,
//        quote71, quote72, quote73, quote74, quote75, quote76, quote77, quote78, quote79, quote80,
//        quote81, quote82, quote83, quote84, quote85, quote86, quote87, quote88, quote89, quote90,
//        quote91, quote92, quote93, quote94, quote95, quote96, quote97, quote98, quote99, quote100
//    ]
//    
    
}


let quote1 = Quote(quote: "Sometimes you have to be a lion, so that you can be the lamb you really are.", author: "Dave Chappelle",image: UIImage(named: "dave-chappelle")!)
let quote2 = Quote(quote: "I do not like that man, I must get to know him better.", author: "Abraham Lincoln", image: UIImage(named: "abraham-lincoln")!)
let quote3 = Quote(quote: "The best and most beautiful things in the world cannot be seen or even touched... they must be felt with the heart", author: "Helen Keller", image: UIImage(named: "helen-keller")!)
let quote4 = Quote(quote: "Darkness cannot drive out darkness, only light can do that. Hate cannot drive out hate, only love can do that.", author: "Martin L. King Jr.", image: UIImage(named: "mlk")!)
let quote85 = Quote(quote: "Once you know what failure feels like, determination chases success.", author: "Kobe Bryant", image: UIImage(named: "kobe-bryant")!)
let quote6 = Quote(quote: "So you were born to feel ‘nice?’ Instead of doing things and experiencing them? Why aren’t you running to do what your nature demands?", author: "Marcus Aurelius", image: UIImage(named: "marcus-aurelius")!)
let quote17 = Quote(quote: "Do not pray for easy lives. Pray to be stronger men.", author: "Rev. Phillips Brooks", image: UIImage(named: "rev-phillips-brooks")!)
let quote8 = Quote(quote: "If freedom of speech is taken away, then dumb and silent we may be led, like sheep to the slaughter.", author: "George Washington", image: UIImage(named: "george-washington")!)
let quote9 = Quote(quote: "A new idea must not be judged by its immediate results", author: "Nikola Tesla", image: UIImage(named: "nikola-tesla")!)
let quote11 = Quote(quote:"If you want to be the best, you have to do things that other people aren't willing to do.", author: "Michael Phelps", image: UIImage(named: "michael-phelps")!)
let quote20 = Quote(quote: "No, I don't ever give up. I'd have to be dead or completely incapacitated", author: "Elon Musk", image: UIImage(named: "elon-musk")!)
let quote12 = Quote(quote: "The cynics may be the loudest voices, but I promise you, they will accomplish the least", author: "Barack Obama", image: UIImage(named: "obama")!)
let quote13 = Quote(quote: "Without passion, you don't have energy; without energy, you have nothing. Nothing great in the world has been accomplished without passion!", author: "Donald J. Trump", image: UIImage(named: "trump")!)
let quote14 = Quote(quote: "If you ever start taking things too seriously, just remember that we are talking monkeys on an organic spaceship flying through the universe.", author: "Joe Rogan", image: UIImage(named: "joe-rogan")!)
let quote15 = Quote(quote: "If I have seen further than others, it is by standing on the shoulders of Giants.", author: "Isaac Newton", image: UIImage(named: "isaac-newton")!)
let quote16 = Quote(quote: "The most difficult thing is the decision to act, the rest is merely tenacity", author: "Amelia Earhart", image: UIImage(named: "earhart")!)
let quote7 = Quote(quote: "You must never be fearful about what you are doing when it is right", author: "Rosa Parks", image: UIImage(named: "rosa-parks")!)
let quote18 = Quote(quote: "Every great dream begins with a dreamer. Always remember, you have within you the strength, the patience, and the passion to reach for the stars to change the world.", author: "Harriet Tubman", image: UIImage(named: "harriet-tubman")!)
let quote19 = Quote(quote: "The most courageous act is still to think for yourself aloud.", author: "Coco Chanel", image: UIImage(named: "coco")!)
let quote10 = Quote(quote: "Humans are allergic to change. They love to say, 'We've always done it this way.' I try to fight that.", author: "Grace Hopper", image: UIImage(named: "grace-hopper")!)
let quote21 = Quote(quote: "We're here to make a dent in the universe. Otherwise, why even be here?", author: "Steve Jobs", image: UIImage(named: "jobs")!)
let quote22 = Quote(quote: "You must be the change you wish to see in the world", author: "Mahatma Gandhi", image: UIImage(named: "mahatma-gandhi")!)
let quote23 = Quote(quote: "Spread love everywhere you go. Let no one ever come to you without leaving happier.", author: "Mother Teresa", image: UIImage(named: "mother-teresa")!)
let quote24 = Quote(quote: "Keep smiling, because life is a beautiful thing and there's so much to smile about.", author: "Marilyn Monroe", image: UIImage(named: "marilyn-monroe")!)
let quote25 = Quote(quote: "Many of life's failures are people who did not realize how close they were to success when they gave up.", author: "Thomas Edison", image: UIImage(named: "thomas-edison")!)
let quote26 = Quote(quote: "I find that the harder I work, the more luck I seem to have", author: "Thomas Jefferson", image: UIImage(named: "thomas-jefferson")!)
let quote27 = Quote(quote: "Everything you can imagine is real.", author: "Pablo Piccasso", image: UIImage(named: "pablo")!)
let quote28 = Quote(quote: "If you set your goals ridiculously high and it's a failure, you will fail above everyone else's success.", author: "James Cameron", image: UIImage(named: "james-cameron")!)
let quote29 = Quote(quote: "To be successful, you have to be selfish, or else you never achieve. And once you get to your highest level, then you have to be unselfish.", author: "Michael Jordon", image: UIImage(named: "michael-jordon")!)
let quote30 = Quote(quote: "Try not to become a man of success. Rather become a man of value.", author: "Albert Einstein", image: UIImage(named: "einstein")!)
let quote31 = Quote(quote: "If you look at what you have in life, you'll always have more. If you look at what you don't have in life, you'll never have enough.", author: "Oprah Winfrey", image: UIImage(named: "oprah")!)
let quote32 = Quote(quote: "If you want to achieve excellence, you can get there today. As of this second, quit doing less-than-excellent work.", author: "Thomas J. Watson", image: UIImage(named: "thomas-watson")!)
let quote33 = Quote(quote: "If you are not willing to risk the usual, you will have to settle for the ordinary.", author: "Jim Rohn", image: UIImage(named: "jim-rohn")!)
let quote34 = Quote(quote: "The question isn't who is going to let me; it's who is going to stop me", author: "Ayn Rand", image: UIImage(named: "ayn-rand")!)
let quote35 = Quote(quote: "Whether you think you can or you think you can't, you're right.", author: "Henry Ford", image: UIImage(named: "henry-ford")!)
let quote36 = Quote(quote: "You miss 100% of the shots you don't take.", author: "Wayne Gretzky", image: UIImage(named: "wayne-g")!)
let quote37 = Quote(quote: "How wonderful it is that nobody need wait a single moment before starting to improve the world.", author: "Anne Frank", image: UIImage(named: "anne-frank")!)
let quote38 = Quote(quote: "Everything you've ever wanted is on the other side of fear.", author: "George Adair", image: UIImage(named: "george-adair")!)
let quote39 = Quote(quote: "It is still best to be honest and truthful; to make the most of what we have; to be happy with simple pleasures; and have courage when things go wrong.", author: "Laura Ingalls Wilder", image: UIImage(named: "laura-wilder")!)
let quote40 = Quote(quote: "I didn't fail the test. I just found 100 ways to do it wrong.", author: "Benjamin Franklin", image: UIImage(named: "ben-franklin")!)
let quote41 = Quote(quote: "A man may die, nations may rise and fall, but an idea lives on.", author: "John F. Kennedy", image: UIImage(named: "jfk")!)
let quote42 = Quote(quote: "Nothing is impossible, the word itself says, ‘I'm possible!", author: "Audrey Hepburn", image: UIImage(named: "audrey-hepburn")!)
let quote43 = Quote(quote: "I would rather die of passion than of boredom.", author: "Vincent Van Gogh", image: UIImage(named: "gogh")!)
let quote44 = Quote(quote: "Compare yourself to who you were yesterday, not to who someone else is today.", author: "Jordan Peterson", image: UIImage(named: "jp")!)
let quote45 = Quote(quote: "You do not rise to the level of your goals, you fall to the level of your systems.", author: "James Clear", image: UIImage(named: "james-clear")!)
let quote46 = Quote(quote: "If you want to lift yourself up, lift up someone else.", author: "Brooker T. Washington", image: UIImage(named: "brooker")!)
let quote47 = Quote(quote: "The strength of the team is each individual member. The strength of each member is the team.", author: "Phil Jackson", image: UIImage(named: "phil-jackson")!)
let quote48 = Quote(quote: "Find a group of people who challenge and inspire you, spend a lot of time with them, and it will change your life.", author: "Amy Poehler", image: UIImage(named: "amy-p")!)
let quote49 = Quote(quote: "Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you, too, can become great.", author: "Mark Twain", image: UIImage(named: "mark-twain")!)
let quote50 = Quote(quote: "Being good in business is the most fascinating kind of art. Making money is art and working is art and good business is the best art.", author: "Andy Worhol", image: UIImage(named: "andy-worhol")!)
let quote51 = Quote(quote: "Challenges are what make life interesting and overcoming them is what makes life meaningful.", author: "Joshua J. Marine", image: UIImage(named: "j-marine")!)
let quote52 = Quote(quote: "Diamonds are nothing more than chunks of coal that stuck to their jobs.", author: "Malcom Forbes", image: UIImage(named: "forbes")!)
let quote53 = Quote(quote: "Pretend that every single person you meet has a sign around his or her neck that says, 'Make me feel important.'", author: "Mary Kay Ash", image: UIImage(named: "mary-kay")!)
let quote54 = Quote(quote: "Be poor, humble and driven (PhD). Don't be afraid to shift or pivot.", author: "Alex Rodgriguez", image: UIImage(named: "a-rod")!)
let quote55 = Quote(quote: "I'd rather regret the things I've done than regret the things I haven't done.", author: "Lucille Ball", image: UIImage(named: "l-ball")!)
let quote56 = Quote(quote: "Motivation is temporary. Inspiration is permanent.", author: "Kelly Slater", image: UIImage(named: "kelly-slater")!)
let quote57 = Quote(quote: "You gotta go in the mud sometimes to figure who you are.", author: "Andy Iorns", image: UIImage(named: "andy-irons")!)
let quote58 = Quote(quote: "Rock bottom became the solid foundation on which I rebuilt my life.", author: "J. K. Rowling", image: UIImage(named: "jk-rowling")!)
let quote59 = Quote(quote: "Hardships often prepare ordinary people for an extraordinary destiny", author: "C. S. Lewis", image: UIImage(named: "cs-lewis")!)
let quote60 = Quote(quote: "I didn't get there by wishing for it or hoping for it, but by working for it.", author: "Estée Lauder", image: UIImage(named: "estee-lauder")!)
let quote61 = Quote(quote: "The only person you are destined to become is the person you decide to be.", author: "Ralph Waldo Emerson", image: UIImage(named: "ralph-waldo")!)
let quote62 = Quote(quote: "First, you take a drink, then the drink takes a drink, then the drink takes you.", author: "F. Scott Fitzgerald", image: UIImage(named: "fscottf")!)
let quote63 = Quote(quote: "Done is better than perfect.", author: "Sheryl Sandberg", image: UIImage(named: "s-sandberg")!)
let quote64 = Quote(quote: "Remember that just because you hit bottom doesn’t mean you have to stay there.", author: "Robert Downey Jr.", image: UIImage(named: "robert-d-jr")!)
let quote65 = Quote(quote: "Don’t judge each day by the harvest you reap but by the seeds that you plant.", author: "Robert L. Stevenson", image: UIImage(named: "robert-stevenson")!)
let quote66 = Quote(quote: "Love God; love others; do your best in all you do, even if you fall short!", author: "Bethany Hamilton", image: UIImage(named: "bethany-hamilton")!)
let quote67 = Quote(quote: "The optimist thinks this is the best of all possible worlds. The pessimist fears it is true.", author: "J. Oppenheimer", image: UIImage(named: "oppenheimer")!)
let quote68 = Quote(quote: "The most common way people give up their power is by thinking they don’t have any.", author: "Alice Walker", image: UIImage(named: "alice-walker")!)
let quote69 = Quote(quote: "One of the hardest things was learning that I was worth recovery.", author: "Demi Lovato", image: UIImage(named: "demi")!)
let quote70 = Quote(quote: "The person who goes to the gym every day regardless of how they feel, will always beat the person who only goes to the gym when they feel like it.", author: "Andrew Tate", image: UIImage(named: "andrew-tate")!)
let quote71 = Quote(quote: "Anywhere I see suffering, that is where I want to be, doing what I can.", author: "Princess Diana", image: UIImage(named: "p-diana")!)
let quote72 = Quote(quote: "Don't worry about motivation. Motivation is fickle. It comes and goes. It is unreliable - and when you are counting on motivation to get your goals accomplished, you will likely fall short.", author: "Jocko Willink", image: UIImage(named: "jocko")!)
let quote73 = Quote(quote: "Our greatest glory is not in never falling, but in rising every time we fall.", author: "Confucius", image: UIImage(named: "confucius")!)
let quote74 = Quote(quote: "A leader leads by example not by force.", author: "Sun Tzu", image: UIImage(named: "sun-tzu")!)
let quote75 = Quote(quote: "So I say to you, Ask and it will be given to you; search, and you will find; knock, and the door will be opened for you.", author: "Jesus Christ", image: UIImage(named: "jesus")!)
let quote76 = Quote(quote: "No matter how hard the past, you can always begin again.", author: "Buddha", image: UIImage(named: "buddha")!)
let quote77 = Quote(quote: "When we meet real tragedy in life, we can react in two ways – either by losing hope and falling into self-destructive habits, or by using the challenge to find our inner strength", author: "Dalai Lama", image: UIImage(named: "dalai-lama")!)
let quote78 = Quote(quote: "I have yet to meet someone who was successful who was even slightly negative. That comes from a muscle training. You can work on negativity and weed it out of your life.", author: "Katt Williams", image: UIImage(named: "katt-w")!)
let quote79 = Quote(quote: "Anxiety is your best friend. It's there to help you. It's trying to save your life.", author: "Bill Burr", image: UIImage(named: "bill-burr")!)
let quote80 = Quote(quote: "Recognize and embrace your flaws so you can learn from them. Sometimes it takes a little polishing to truly shine.", author: "Kanye West", image: UIImage(named: "kanye")!)
let quote81 = Quote(quote: "All the suffering, stress, and addiction comes from not realizing you already are what you are looking for.", author: "Jon Kabat-Zinn", image: UIImage(named: "jon-zinn")!)
let quote82 = Quote(quote: "Ya think whiskey tastes good? Try a big cup of sobriety -- now that’s the good stuff!", author: "Steven Tyler", image: UIImage(named: "steven-tyler")!)
let quote5 = Quote(quote: "If you can quit for a day, you can quit for a lifetime.", author: "Benjamin Alire Sáenz", image: UIImage(named: "benjamin-saenz")!)
let quote84 = Quote(quote: "True ambition is not what we thought it was. True ambition is the profound desire to live usefully and walk humbly under the grace of God.", author: "Bill W.", image: UIImage(named: "bill-w")!)
let quote83 = Quote(quote: "What is addiction, really? It is a sign, a signal, a symptom of distress. It is a language that tells us about a plight that must be understood.", author: "Allice Duer Miller", image: UIImage(named: "alice-miller")!)
let quote86 = Quote(quote: "People often say that motivation doesn’t last. Neither does bathing. That’s why we recommend it daily.", author: "Zig Ziglar", image: UIImage(named: "zig-ziglar")!)
let quote87 = Quote(quote: "The greatness of a man is not in how much wealth he acquires, but in his integrity and his ability to affect those around him positively.", author: "Bob Marley", image: UIImage(named: "bob-marley")!)
let quote88 = Quote(quote: "The way to get started is to quit talking and begin doing.", author: "Walt Disney", image: UIImage(named: "walt-disney")!)
let quote89 = Quote(quote: "Hitting bottom and hitting it hard was the worst thing that ever happened to me and the best thing that ever happened to me.", author: "Dave Ramsey", image: UIImage(named: "dave-r")!)
let quote90 = Quote(quote: "Addiction denied is recovery delayed.", author: "Mokokoma Mokhonoana", image: UIImage(named: "mokokoma-mokhonoana")!)
//let quote91 = Quote(quote: <#T##String#>, author: <#T##String#>, image: UIImage(named: <#T##String#>)!)
