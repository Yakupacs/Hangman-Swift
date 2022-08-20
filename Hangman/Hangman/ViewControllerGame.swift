//
//  ViewControllerGame.swift
//  Hangman
//
//  Created by Yakup Acis on 8/19/22.
//

import UIKit

class ViewControllerGame: UIViewController {

    @IBOutlet weak var subjectLbl: UILabel!
    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var lineLbl: UILabel!
    @IBOutlet weak var scoreLbl: UILabel!
    
    @IBOutlet weak var headStick: UILabel!
    @IBOutlet weak var leftUpStick: UILabel!
    @IBOutlet weak var rightUpStick: UILabel!
    @IBOutlet weak var centerStick: UILabel!
    @IBOutlet weak var leftDownStick: UILabel!
    @IBOutlet weak var rightDownStick: UILabel!
    @IBOutlet weak var line1Stick: UILabel!
    @IBOutlet weak var line2Stick: UILabel!
    @IBOutlet weak var line3Stick: UILabel!
    @IBOutlet weak var line4Stick: UILabel!
    @IBOutlet weak var line5Stick: UILabel!
    @IBOutlet weak var line6Stick: UILabel!
    @IBOutlet weak var killedLbl: UIButton!
    @IBOutlet weak var aBtn: UIButton!
    @IBOutlet weak var bBtn: UIButton!
    @IBOutlet weak var cBtn: UIButton!
    @IBOutlet weak var c_Btn: UIButton!
    @IBOutlet weak var dBtn: UIButton!
    @IBOutlet weak var eBtn: UIButton!
    @IBOutlet weak var fBtn: UIButton!
    @IBOutlet weak var gBtn: UIButton!
    @IBOutlet weak var g_Btn: UIButton!
    @IBOutlet weak var hBtn: UIButton!
    @IBOutlet weak var i_Btn: UIButton!
    @IBOutlet weak var iBtn: UIButton!
    @IBOutlet weak var jBtn: UIButton!
    @IBOutlet weak var kBtn: UIButton!
    @IBOutlet weak var lBtn: UIButton!
    @IBOutlet weak var mBtn: UIButton!
    @IBOutlet weak var nBtn: UIButton!
    @IBOutlet weak var oBtn: UIButton!
    @IBOutlet weak var o_Btn: UIButton!
    @IBOutlet weak var pBtn: UIButton!
    @IBOutlet weak var rBtn: UIButton!
    @IBOutlet weak var sBtn: UIButton!
    @IBOutlet weak var s_Btn: UIButton!
    @IBOutlet weak var tBtn: UIButton!
    @IBOutlet weak var uBtn: UIButton!
    @IBOutlet weak var u_Btn: UIButton!
    @IBOutlet weak var vBtn: UIButton!
    @IBOutlet weak var yBtn: UIButton!
    @IBOutlet weak var zBtn: UIButton!
    @IBOutlet weak var restartBtn: UIButton!
    
    var due = 11
    var score = 0
    var str = ""
    var answer = ""
    var count = 0
    var check = 0
    var i = 0
    var array = [String]()
    var sign : Bool = false
    
    var animals = ["kedi", "köpek", "fil", "kaplumbağa", "yılan", "inek", "maymun", "koyun", "fare", "aslan", "kaplan", "iguana", "antilop", "fok", "penguen", "arı", "yengeç", "zebra", "zürafa", "çita"]
    
    var flowers = ["menekşe", "papatya", "gül", "ayçiçeği", "manolya", "mimoza", "lale", "zambak", "nilüfer", "sümbül", "kasımpatı", "nergis", "karanfil", "leylak", "şebboy"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        questionLbl.isHidden = true
        killedLbl.isHidden = true
        scoreLbl.text = "YOUR SCORE: \(score)"
        subjectLbl.text = "flowers"
        
        flowers.shuffle()
        answer = flowers[0]
        
        questionLbl.text = answer
        count = answer.count
        while (count > 0){
            str = str + "-"
            count -= 1
        }
        lineLbl.text = str
        
        str = ""
        count = 0
        print(answer)
        i = answer.count
        check = 0
        while(i != 0){
            array.append(" ")
            i -= 1
            check += 1
        }
    }
    
    @IBAction func aLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "a"){
                array[i] = "a"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        aBtn.isEnabled = false
    }
    @IBAction func bLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "b"){
                array[i] = "b"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        bBtn.isEnabled = false
    }
    @IBAction func cLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "c"){
                array[i] = "c"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        cBtn.isEnabled = false
    }
    @IBAction func c_Letter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "ç"){
                array[i] = "ç"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        c_Btn.isEnabled = false
    }
    @IBAction func dLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "d"){
                array[i] = "d"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        dBtn.isEnabled = false
    }
    @IBAction func eLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "e"){
                array[i] = "e"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        eBtn.isEnabled = false
    }
    @IBAction func fLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "f"){
                array[i] = "f"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        fBtn.isEnabled = false
    }
    @IBAction func gLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "g"){
                array[i] = "g"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        gBtn.isEnabled = false
    }
    @IBAction func g_Letter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "ğ"){
                array[i] = "ğ"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        g_Btn.isEnabled = false
        
    }
    @IBAction func hLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "h"){
                array[i] = "h"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        hBtn.isEnabled = false
    }
    @IBAction func i_Letter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "ı"){
                array[i] = "ı"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        i_Btn.isEnabled = false
    }
    @IBAction func iLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "i"){
                array[i] = "i"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        iBtn.isEnabled = false
    }
    @IBAction func jLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "j"){
                array[i] = "j"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        jBtn.isEnabled = false
    }
    @IBAction func kLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "k"){
                array[i] = "k"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        kBtn.isEnabled = false
    }
    @IBAction func lLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "l"){
                array[i] = "l"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        lBtn.isEnabled = false
    }
    @IBAction func mLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "m"){
                array[i] = "m"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        mBtn.isEnabled = false
    }
    @IBAction func nLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "n"){
                array[i] = "n"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        nBtn.isEnabled = false
    }
    @IBAction func oLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "o"){
                array[i] = "o"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        oBtn.isEnabled = false
    }
    @IBAction func o_Letter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "ö"){
                array[i] = "ö"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        o_Btn.isEnabled = false
    }
    @IBAction func pLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "p"){
                array[i] = "p"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        pBtn.isEnabled = false
    }
    @IBAction func rLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "r"){
                array[i] = "r"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        rBtn.isEnabled = false
    }
    @IBAction func sLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "s"){
                array[i] = "s"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        sBtn.isEnabled = false
    }
    @IBAction func s_Letter(_ sender: Any) {
        
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "ş"){
                array[i] = "ş"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        s_Btn.isEnabled = false
    }
    @IBAction func u_Letter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "ü"){
                array[i] = "ü"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        u_Btn.isEnabled = false
    }
    @IBAction func vLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "v"){
                array[i] = "v"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        vBtn.isEnabled = false
    }
    @IBAction func yLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "y"){
                array[i] = "y"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        yBtn.isEnabled = false
    }
    @IBAction func zLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "z"){
                array[i] = "z"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        zBtn.isEnabled = false
    }
    @IBAction func uLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "u"){
                array[i] = "u"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        uBtn.isEnabled = false
    }
    @IBAction func tLetter(_ sender: Any) {
        let word = [Character](answer)
        count = word.count
        i = 0
        while (count != 0){
            if (word[i] == "t"){
                array[i] = "t"
                score += 1
                sign = true
            }
            else if (array[i] == " "){
                array[i] = "  "
            }
            i += 1
            count -= 1
        }
        for a in array{
            str += a + " " + " "
        }
        i = 0
        count = word.count
        if (sign == false){
            failFunc()
        }
        else{
            sign = false
        }
        questionLbl.text = str
        questionLbl.isHidden = false
        str = ""
        scoreLbl.text = "YOUR SCORE: \(score)"
        tBtn.isEnabled = false
    }
    func failFunc(){
        due -= 1
        switch due {
        case 10:
            line1Stick.textColor = .white
        case 9:
            line2Stick.textColor = .white
            line3Stick.textColor = .white
        case 8:
            line4Stick.textColor = .white
        case 7:
            line5Stick.textColor = .white
        case 6:
            line6Stick.textColor = .white
        case 5:
            headStick.textColor = .white
        case 4:
            centerStick.textColor = .white
        case 3:
            leftUpStick.textColor = .white
        case 2:
            rightUpStick.textColor = .white
        case 1:
            leftDownStick.textColor = .white
        case 0:
            rightDownStick.textColor = .white
        default:
            line1Stick.textColor = .red
            line2Stick.textColor = .red
            line3Stick.textColor = .red
            line4Stick.textColor = .red
            line5Stick.textColor = .red
            line6Stick.textColor = .red
            headStick.textColor = .red
            centerStick.textColor = .red
            leftUpStick.textColor = .red
            leftDownStick.textColor = .red
            rightUpStick.textColor = .red
            rightDownStick.textColor = .red
            killedLbl.isHidden = false
            aBtn.isEnabled = false
            bBtn.isEnabled = false
            cBtn.isEnabled = false
            c_Btn.isEnabled = false
            dBtn.isEnabled = false
            eBtn.isEnabled = false
            fBtn.isEnabled = false
            gBtn.isEnabled = false
            g_Btn.isEnabled = false
            hBtn.isEnabled = false
            iBtn.isEnabled = false
            i_Btn.isEnabled = false
            jBtn.isEnabled = false
            kBtn.isEnabled = false
            lBtn.isEnabled = false
            mBtn.isEnabled = false
            nBtn.isEnabled = false
            oBtn.isEnabled = false
            o_Btn.isEnabled = false
            pBtn.isEnabled = false
            rBtn.isEnabled = false
            sBtn.isEnabled = false
            s_Btn.isEnabled = false
            tBtn.isEnabled = false
            uBtn.isEnabled = false
            u_Btn.isEnabled = false
            vBtn.isEnabled = false
            yBtn.isEnabled = false
            zBtn.isEnabled = false
            restartBtn.backgroundColor = .white
        }
    }
    @IBAction func restartFunc(_ sender: Any) {
        due = 11
        score = 0
        str = ""
        answer = ""
        count = 0
        check = 0
        i = 0
        array = [String]()
        sign = false
        questionLbl.isHidden = true
        killedLbl.isHidden = true
        scoreLbl.text = "YOUR SCORE: \(score)"
        subjectLbl.text = "flowers"
        
        flowers.shuffle()
        answer = flowers[0]
        
        questionLbl.text = answer
        count = answer.count
        while (count > 0){
            str = str + "-"
            count -= 1
        }
        lineLbl.text = str
        
        str = ""
        count = 0
        print(answer)
        i = answer.count
        check = 0
        while(i != 0){
            array.append(" ")
            i -= 1
            check += 1
        }
        aBtn.isEnabled = true
        bBtn.isEnabled = true
        cBtn.isEnabled = true
        c_Btn.isEnabled = true
        dBtn.isEnabled = true
        eBtn.isEnabled = true
        fBtn.isEnabled = true
        gBtn.isEnabled = true
        g_Btn.isEnabled = true
        hBtn.isEnabled = true
        iBtn.isEnabled = true
        i_Btn.isEnabled = true
        jBtn.isEnabled = true
        kBtn.isEnabled = true
        lBtn.isEnabled = true
        mBtn.isEnabled = true
        nBtn.isEnabled = true
        oBtn.isEnabled = true
        o_Btn.isEnabled = true
        pBtn.isEnabled = true
        rBtn.isEnabled = true
        sBtn.isEnabled = true
        s_Btn.isEnabled = true
        tBtn.isEnabled = true
        uBtn.isEnabled = true
        u_Btn.isEnabled = true
        vBtn.isEnabled = true
        yBtn.isEnabled = true
        zBtn.isEnabled = true
        restartBtn.backgroundColor = .black
        line1Stick.textColor = .darkGray
        line2Stick.textColor = .darkGray
        line3Stick.textColor = .darkGray
        line4Stick.textColor = .darkGray
        line5Stick.textColor = .darkGray
        line6Stick.textColor = .darkGray
        headStick.textColor = .darkGray
        centerStick.textColor = .darkGray
        leftUpStick.textColor = .darkGray
        leftDownStick.textColor = .darkGray
        rightUpStick.textColor = .darkGray
        rightDownStick.textColor = .darkGray
    }
    func newWord(){
        sign = false
        aBtn.isEnabled = true
        bBtn.isEnabled = true
        cBtn.isEnabled = true
        c_Btn.isEnabled = true
        dBtn.isEnabled = true
        eBtn.isEnabled = true
        fBtn.isEnabled = true
        gBtn.isEnabled = true
        g_Btn.isEnabled = true
        hBtn.isEnabled = true
        iBtn.isEnabled = true
        i_Btn.isEnabled = true
        jBtn.isEnabled = true
        kBtn.isEnabled = true
        lBtn.isEnabled = true
        mBtn.isEnabled = true
        nBtn.isEnabled = true
        oBtn.isEnabled = true
        o_Btn.isEnabled = true
        pBtn.isEnabled = true
        rBtn.isEnabled = true
        sBtn.isEnabled = true
        s_Btn.isEnabled = true
        tBtn.isEnabled = true
        uBtn.isEnabled = true
        u_Btn.isEnabled = true
        vBtn.isEnabled = true
        yBtn.isEnabled = true
        zBtn.isEnabled = true
        str = ""
        count = 0
        print(answer)
        i = answer.count
        check = 0
        while(i != 0){
            array.append(" ")
            i -= 1
            check += 1
        }
        flowers.shuffle()
        answer = flowers[0]
        
        questionLbl.text = answer
        count = answer.count
        while (count > 0){
            str = str + "-"
            count -= 1
        }
        lineLbl.text = str
    }
}
