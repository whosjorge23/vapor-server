//
//  WordOfTheDayController.swift
//  
//
//  Created by Giorgio Giannotta on 15/04/23.
//

import Vapor

final class WordOfTheDayController {
    let words: [WordOfTheDay]

        init() {
            // Initialize your array of WordOfTheDay objects here
            self.words = [
                WordOfTheDay(word: "Hello", definition: "used as a greeting or to begin a telephone conversation", example: "hello there!"),
                WordOfTheDay(word: "World", definition: "the earth, together with all of its countries and peoples", example: "he travelled the world"),
                WordOfTheDay(word: "Swift", definition: "moving or capable of moving with great speed or velocity", example: "a swift current"),
                WordOfTheDay(word: "Serendipity", definition: "the occurrence and development of events by chance in a happy or beneficial way", example: "a fortunate stroke of serendipity"),
                WordOfTheDay(word: "Euphoria", definition: "a feeling or state of intense excitement and happiness", example: "the euphoria of winning the championship"),
                WordOfTheDay(word: "Nefarious", definition: "wicked or criminal", example: "a nefarious plot to overthrow the government"),
                WordOfTheDay(word: "Perfunctory", definition: "carried out with a minimum of effort or reflection", example: "he gave a perfunctory nod of the head"),
                WordOfTheDay(word: "Melancholy", definition: "a feeling of pensive sadness, typically with no obvious cause", example: "he sat in melancholy silence"),
                WordOfTheDay(word: "Reticent", definition: "not revealing one's thoughts or feelings readily", example: "she was extremely reticent about her personal life"),
                WordOfTheDay(word: "Pandemonium", definition: "wild and noisy disorder or confusion; uproar", example: "the concert ended in pandemonium as the crowd rushed the stage"),
                WordOfTheDay(word: "Ephemeral", definition: "lasting for a very short time", example: "the beauty of the sunset was ephemeral"),
                WordOfTheDay(word: "Clandestine", definition: "kept secret or done secretively, especially because illicit", example: "a clandestine meeting between two spies"),
                WordOfTheDay(word: "Idiosyncrasy", definition: "a mode of behavior or way of thought peculiar to an individual", example: "her little idiosyncrasies made her stand out from the crowd"),
                WordOfTheDay(word: "Paradox", definition: "a statement that contradicts itself or is seemingly absurd yet is perhaps true", example: "less is more is a famous paradox"),
                WordOfTheDay(word: "Surreptitious", definition: "kept secret, especially because it would not be approved of", example: "she made a surreptitious glance at her watch"),
                WordOfTheDay(word: "Vex", definition: "make (someone) feel annoyed, frustrated, or worried, especially with trivial matters", example: "the constant noise began to vex her"),
                WordOfTheDay(word: "Eloquent", definition: "fluent or persuasive in speaking or writing", example: "his eloquent speeches inspired many people"),
                WordOfTheDay(word: "Ubiquitous", definition: "present, appearing, or found everywhere", example: "technology is ubiquitous in our daily lives"),
                WordOfTheDay(word: "Mundane", definition: "lacking interest or excitement; dull", example: "his mundane job bored him to tears"),
                WordOfTheDay(word: "Capricious", definition: "given to sudden and unaccountable changes of mood or behavior", example: "her capricious nature made her hard to predict"),
                WordOfTheDay(word: "Quintessential", definition: "representing the most perfect or typical example of a quality or class", example: "she was the quintessential Hollywood star"),
                WordOfTheDay(word: "Epiphany", definition: "a sudden and profound understanding of something", example: "he had an epiphany about his true purpose in life"),
                WordOfTheDay(word: "Inscrutable", definition: "impossible to understand or interpret", example: "her inscrutable expression gave no clue to her thoughts"),
                WordOfTheDay(word: "Misanthrope", definition: "a person who dislikes humankind and avoids human society", example: "he became a misanthrope after a series of disappointments in his personal relationships"),
                WordOfTheDay(word: "Sycophant", definition: "a person who acts obsequiously toward someone important in order to gain advantage", example: "he was a sycophant who constantly flattered his boss to get ahead"),
            ]
        }

        func getRandomWord(_ req: Request) throws -> WordOfTheDay {
            guard let randomWord = words.randomElement() else {
                throw Abort(.internalServerError)
            }

            return randomWord
        }
}
