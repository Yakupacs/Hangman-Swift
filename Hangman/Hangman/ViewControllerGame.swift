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
    @IBOutlet weak var maxScoreLbl: UILabel!
    
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
    var i = 0
    var array = [String]()
    var sign : Bool = false
    var maxScore = 0
    
    var flowers = ["açelya","akasya","aslanağzı","begonvil","begonya","biberiye","çarkıfelek","çiğdem","defne","devedikeni","eğreltiotu","erguvan","fesleğen","firuze","fulya","gelincik","gül","günebakan","hanımeli","ıhlamur","kadife","kaktüs","kamelya","kasımpatı","karanfil","krizantem","kuşkonmaz","lale","leylak","manolya","menekşe","meyan","mimoza","nane","nergis","nilüfer","orkide","öksekotu","papatya","reyhan","rezene","sardunya","şebboy","sarmaşık","sümbül","yabangülü","yasemin","yüksükotu","zambak"]

    override func viewDidLoad() {
        super.viewDidLoad()
        let savedScore = UserDefaults.standard.object(forKey: "score")
        if let getScore = savedScore as? String{
            maxScoreLbl.text = "MAX SCORE: \(String(describing: getScore))"
        }
        
        questionLbl.isHidden = true
        killedLbl.isHidden = true
        scoreLbl.text = "YOUR SCORE: \(score)"
        subjectLbl.text = "FLOWERS"
        
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
        i = answer.count
        while(i != 0){
            array.append(" ")
            i -= 1
        }
    }
    
    @IBAction func aLetter(_ sender: Any) {
        aBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func bLetter(_ sender: Any) {
        bBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func cLetter(_ sender: Any) {
        cBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func c_Letter(_ sender: Any) {
        c_Btn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func dLetter(_ sender: Any) {
        dBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func eLetter(_ sender: Any) {
        eBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func fLetter(_ sender: Any) {
        fBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func gLetter(_ sender: Any) {
        gBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func g_Letter(_ sender: Any) {
        g_Btn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
        
    }
    @IBAction func hLetter(_ sender: Any) {
        hBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func i_Letter(_ sender: Any) {
        i_Btn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func iLetter(_ sender: Any) {
        iBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func jLetter(_ sender: Any) {
        jBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func kLetter(_ sender: Any) {
        kBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func lLetter(_ sender: Any) {
        lBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func mLetter(_ sender: Any) {
        mBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func nLetter(_ sender: Any) {
        nBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func oLetter(_ sender: Any) {
        oBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func o_Letter(_ sender: Any) {
        o_Btn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func pLetter(_ sender: Any) {
        pBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func rLetter(_ sender: Any) {
        rBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func sLetter(_ sender: Any) {
        sBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func s_Letter(_ sender: Any) {
        s_Btn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func u_Letter(_ sender: Any) {
        u_Btn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func vLetter(_ sender: Any) {
        vBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func yLetter(_ sender: Any) {
        yBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func zLetter(_ sender: Any) {
        zBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func uLetter(_ sender: Any) {
        uBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    @IBAction func tLetter(_ sender: Any) {
        tBtn.isHidden = true
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
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
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
            if (score > maxScore){
                maxScore = score
                UserDefaults.standard.setValue(String(maxScore), forKey: "score")
                maxScoreLbl.text = "MAX SCORE: \(maxScore)"
            }
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
        i = answer.count
        while(i != 0){
            array.append(" ")
            i -= 1
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
        aBtn.isHidden = false
        bBtn.isHidden = false
        cBtn.isHidden = false
        c_Btn.isHidden = false
        dBtn.isHidden = false
        eBtn.isHidden = false
        fBtn.isHidden = false
        gBtn.isHidden = false
        g_Btn.isHidden = false
        hBtn.isHidden = false
        i_Btn.isHidden = false
        iBtn.isHidden = false
        jBtn.isHidden = false
        kBtn.isHidden = false
        lBtn.isHidden = false
        mBtn.isHidden = false
        nBtn.isHidden = false
        oBtn.isHidden = false
        o_Btn.isHidden = false
        pBtn.isHidden = false
        rBtn.isHidden = false
        sBtn.isHidden = false
        s_Btn.isHidden = false
        tBtn.isHidden = false
        uBtn.isHidden = false
        u_Btn.isHidden = false
        vBtn.isHidden = false
        yBtn.isHidden = false
        zBtn.isHidden = false
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
        
        questionLbl.isHidden = true
        killedLbl.isHidden = true
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
        
        aBtn.isHidden = false
        bBtn.isHidden = false
        cBtn.isHidden = false
        c_Btn.isHidden = false
        dBtn.isHidden = false
        eBtn.isHidden = false
        fBtn.isHidden = false
        gBtn.isHidden = false
        g_Btn.isHidden = false
        hBtn.isHidden = false
        i_Btn.isHidden = false
        iBtn.isHidden = false
        jBtn.isHidden = false
        kBtn.isHidden = false
        lBtn.isHidden = false
        mBtn.isHidden = false
        nBtn.isHidden = false
        oBtn.isHidden = false
        o_Btn.isHidden = false
        pBtn.isHidden = false
        rBtn.isHidden = false
        sBtn.isHidden = false
        s_Btn.isHidden = false
        tBtn.isHidden = false
        uBtn.isHidden = false
        u_Btn.isHidden = false
        vBtn.isHidden = false
        yBtn.isHidden = false
        zBtn.isHidden = false

        str = ""
        answer = ""
        count = 0
        i = 0
        array = [String]()
        sign = false
        questionLbl.isHidden = true
        killedLbl.isHidden = true
        scoreLbl.text = "YOUR SCORE: \(score)"
        
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
        i = answer.count
        while(i != 0){
            array.append(" ")
            i -= 1
        }
        score += 5
    }
}
