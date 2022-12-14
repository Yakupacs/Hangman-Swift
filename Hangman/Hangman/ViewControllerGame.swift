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
    @IBOutlet weak var userLbl: UILabel!
    
    var due = 11
    var score = 0
    var str = ""
    var answer = ""
    var count = 0
    var i = 0
    var array = [String]()
    var sign : Bool = false
    var maxScore = 0
    var all = [[String]]()
    var name : String = ""
    
    var savedScore : Int?
    var savedName : String?
    
    var flowers = ["a??elya","akasya","aslana??z??","begonvil","begonya","biberiye","??ark??felek","??i??dem","defne","devedikeni","e??reltiotu","erguvan","fesle??en","firuze","fulya","gelincik","g??l","g??nebakan","han??meli","??hlamur","kadife","kakt??s","kamelya","kas??mpat??","karanfil","krizantem","ku??konmaz","lale","leylak","manolya","menek??e","meyan","mimoza","nane","nergis","nil??fer","orkide","??ksekotu","papatya","reyhan","rezene","sardunya","??ebboy","sarma????k","s??mb??l","yabang??l??","yasemin","y??ks??kotu","zambak"]
    
    var animals = ["ahtapot", "akbaba", "ar??", "aslan", "at", "atmaca", "balina","bayku??", "b??ld??rc??n", "ceylan", "??akal", "deve", "e??ek", "engerek","fare", "fil", "fok", "gelincik", "geyik", "goril", "g??vercin", "hamsi", "hindi", "horoz", "inek", "kanarya", "kaplan", "kanguru", "kaplumba??a", "kar??nca", "kat??r", "kaz", "ke??i", "kedi", "k??rlang????", "koyun", "koala", "koyun", "k??pek", "ku??u", "kunduz", "kumru", "kuskus", "kuzgun", "lama", "leopar", "levrek", "manda", "maymun", "mezgit","orangutan", "ornitorenk","??k??z", "??r??mcek", "??rdek","palamut", "porsuk", "salyangoz", "samur", "sansar", "ser??e", "sincap", "s??????r", "??ahin", "tav??an", "tavuk", "tavusku??u", "tilki", "timsah", "uskumru", "va??ak", "y??lan", "yenge??", "z??rafa", "zebra"]
    
    var countries = ["afganistan", "almanya", "amerika", "arjantin", "avustralya", "avusturya", "azerbaycan", "brezilya", "cezayir", "??in", "danimarka", "endonezya", "ermenistan", "fas", "fransa", "filistin", "g??rcistan", "hindistan", "hollanda", "??rak", "iran", "irlanda", "ispanya", "israil", "isve??", "italya", "izlanda","japonya", "kolombiya", "kanada", "kosova", "k??ba", "l??bnan", "t??rkmenistan", "tanzanya", "somali","s??rbistan", "tacikistan", "tunus", "ukrayna", "yenizelanda", "yunanistan", "uganda","tayland","salvador", "polonya","romanya"]
    
    var sports = ["atletizm", "voleybol", "k??rek", "yelken", "badminton", "triatlon", "basketbol", "ok??uluk", "kano", "at??c??l??k", "masatenisi", "bisiklet", "binicilik", "masatenisi", "tekvando", "futbol", "cimnastik", "halter", "hokey","hentbol", "tenis", "susporlar??", "judo", "pentatlon"]
    
    var languages = ["afrikaanca", "almanca", "arap??a", "arnavut??a", "bo??nak??a", "bulgarca", "??ince", "endonezce", "ermenice", "fars??a", "felemenk??e", "filipince","frans??zca", "h??rvat??a", "hint??e", "ibranice", "ingilizce", "irlandaca", "ispanyolca", "isve????e", "italyanca", "izlandaca", "japonca", "kazak??a", "korece", "k??rt??e", "latince","leh??e", "macarca", "mo??olca", "norve????e", "??zbek??e", "portekizce","rus??a", "s??rp??a", "slovak??a", "somalice", "tatarca", "t??rk??e", "ukraynaca", "yunanca"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // APPEND LISTS
        all.append(flowers)
        all.append(animals)
        all.append(countries)
        all.append(sports)
        all.append(languages)
        
        // LOAD SCORE
        savedName = UserDefaults.standard.string(forKey: "name")
        savedScore = UserDefaults.standard.integer(forKey: "score")
        if let getName = savedName as? String{
            userLbl.text = "USER: \(getName)"
        }
        if let getScore = savedScore as? Int{
            maxScoreLbl.text = "MAX SCORE: \(getScore)"
        }
        
        killedLbl.isHidden = true
        
        all.shuffle()
        answer = shuffleElements(all: all)
        questionLbl.text = answer
        
        i = answer.count
        while(i != 0){
            array.append("_")
            i -= 1
        }
        i = 0
        var countArray = array.count
        while (countArray != 0){
            str += "_" + " " + " "
            countArray -= 1
        }
        questionLbl.text = str
        str = ""
    }
    
    @IBAction func aLetter(_ sender: Any) {
        letterControl(btn: aBtn, char: "a")
    }
    @IBAction func bLetter(_ sender: Any) {
        letterControl(btn: bBtn, char: "b")
    }
    @IBAction func cLetter(_ sender: Any) {
        letterControl(btn: cBtn, char: "c")
    }
    @IBAction func c_Letter(_ sender: Any) {
        letterControl(btn: c_Btn, char: "??")
    }
    @IBAction func dLetter(_ sender: Any) {
        letterControl(btn: dBtn, char: "d")
    }
    @IBAction func eLetter(_ sender: Any) {
        letterControl(btn: eBtn, char: "e")
    }
    @IBAction func fLetter(_ sender: Any) {
        letterControl(btn: fBtn, char: "f")
    }
    @IBAction func gLetter(_ sender: Any) {
        letterControl(btn: gBtn, char: "g")
    }
    @IBAction func g_Letter(_ sender: Any) {
        letterControl(btn: g_Btn, char: "??")
    }
    @IBAction func hLetter(_ sender: Any) {
        letterControl(btn: hBtn, char: "h")
    }
    @IBAction func i_Letter(_ sender: Any) {
        letterControl(btn: i_Btn, char: "??")
    }
    @IBAction func iLetter(_ sender: Any) {
        letterControl(btn: iBtn, char: "i")
    }
    @IBAction func jLetter(_ sender: Any) {
        letterControl(btn: jBtn, char: "j")
    }
    @IBAction func kLetter(_ sender: Any) {
        letterControl(btn: kBtn, char: "k")
    }
    @IBAction func lLetter(_ sender: Any) {
        letterControl(btn: lBtn, char: "l")
    }
    @IBAction func mLetter(_ sender: Any) {
        letterControl(btn: mBtn, char: "m")
    }
    @IBAction func nLetter(_ sender: Any) {
        letterControl(btn: nBtn, char: "n")
    }
    @IBAction func oLetter(_ sender: Any) {
        letterControl(btn: oBtn, char: "o")
    }
    @IBAction func o_Letter(_ sender: Any) {
        letterControl(btn: o_Btn, char: "??")
    }
    @IBAction func pLetter(_ sender: Any) {
        letterControl(btn: pBtn, char: "p")
    }
    @IBAction func rLetter(_ sender: Any) {
        letterControl(btn: rBtn, char: "r")
    }
    @IBAction func sLetter(_ sender: Any) {
        letterControl(btn: sBtn, char: "s")
    }
    @IBAction func s_Letter(_ sender: Any) {
        letterControl(btn: s_Btn, char: "??")
    }
    @IBAction func u_Letter(_ sender: Any) {
        letterControl(btn: u_Btn, char: "??")
    }
    @IBAction func vLetter(_ sender: Any) {
        letterControl(btn: vBtn, char: "v")
    }
    @IBAction func yLetter(_ sender: Any) {
        letterControl(btn: yBtn, char: "y")
    }
    @IBAction func zLetter(_ sender: Any) {
        letterControl(btn: zBtn, char: "z")
    }
    @IBAction func uLetter(_ sender: Any) {
        letterControl(btn: uBtn, char: "u")
    }
    @IBAction func tLetter(_ sender: Any) {
        letterControl(btn: tBtn, char: "t")
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
                if let getScore = savedScore as? Int{
                    if getScore < score{
                        UserDefaults.standard.set(score, forKey: "score")
                        UserDefaults.standard.set(name, forKey: "name")
                    }
                }
                allSticksRed()
                killedLbl.isHidden = false
                allButtonsNotEnabled()
                restartBtn.backgroundColor = .white
                
                let answerAlert = UIAlertController.init(title: "Game Over!", message: "Answer: \(answer)\nYour Score: \(score)", preferredStyle: UIAlertController.Style.alert)
                let restartAction = UIAlertAction.init(title: "Restart", style: .destructive, handler: restartFunc)
                let cancelAction = UIAlertAction.init(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil)
                answerAlert.addAction(restartAction)
                answerAlert.addAction(cancelAction)
                self.present(answerAlert, animated: true, completion: nil)
        }
    }
    @IBAction func restartFunc(_ sender: Any) {
        // LOAD SCORE
        let savedName = UserDefaults.standard.string(forKey: "name")
        let savedScore = UserDefaults.standard.integer(forKey: "score")
        if let getName = savedName as? String{
            userLbl.text = "USER: \(getName)"
        }
        if let getScore = savedScore as? Int{
            maxScoreLbl.text = "MAX SCORE: \(getScore)"
        }

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
        scoreLbl.text = "SCORE:??\(score)"
        
        all.shuffle()
        answer = shuffleElements(all: all)
        questionLbl.text = answer

        i = answer.count
        while(i != 0){
            array.append("_")
            i -= 1
        }
        
        allButtonsEnabled()
        allButtonsNotHidden()
        
        restartBtn.backgroundColor = .black
        
        allSticksDarkGray()
        
        str = ""
        i = 0
        var countArray = array.count
        while (countArray != 0){
            str += "_" + " " + " "
            countArray -= 1
        }
        questionLbl.text = str
        str = ""
        questionLbl.isHidden = false
    }
    func newWord(){
        
        questionLbl.isHidden = true
        killedLbl.isHidden = true
        sign = false

        allButtonsEnabled()
        allButtonsNotHidden()

        str = ""
        answer = ""
        count = 0
        i = 0
        array = [String]()
        sign = false
        questionLbl.isHidden = true
        killedLbl.isHidden = true
        scoreLbl.text = "SCORE:??\(score)"
        
        all.shuffle()
        answer = shuffleElements(all: all)
        questionLbl.text = answer
        
        str = ""
        count = 0
        i = answer.count
        while(i != 0){
            array.append("_")
            i -= 1
        }
        score += 5
        str = ""
        i = 0
        var countArray = array.count
        while (countArray != 0){
            str += "_" + " " + " "
            countArray -= 1
        }
        questionLbl.text = str
        str = ""
        questionLbl.isHidden = false
    }
    @IBAction func backFunc(_ sender: Any) {
        performSegue(withIdentifier: "toBack", sender: nil)
    }
    
    func shuffleElements(all: [[String]]) -> String{
        var liste = all[0]
        if (liste[0] == "afganistan"){
            subjectLbl.text = "A  COUNTRY"
        }
        else if (liste[0] == "ahtapot"){
            subjectLbl.text = "A  ANIMAL"
        }
        else if (liste[0] == "a??elya"){
            subjectLbl.text = "A  FLOWER"
        }
        else if (liste[0] == "atletizm"){
            subjectLbl.text = "A  SPORT"
        }
        else if (liste[0] == "afrikaanca"){
            subjectLbl.text = "A  LANGUAGE"
        }
        liste.shuffle()
        liste.shuffle()
        answer = liste[0]
        return answer
    }
    
    func letterControl(btn: UIButton, char: String)
    {
        btn.isHidden = true
        let word = [Character](self.answer)
        count = word.count
        i = 0
        while (count != 0){
            if (String(word[i]) == char){
                array[i] = char
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
        scoreLbl.text = "SCORE:??\(score)"
        btn.isEnabled = false
        let convert = array.joined(separator: "")
        if (convert == answer){
            newWord()
        }
    }
    
    func allSticksDarkGray(){
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
    
    func allSticksRed(){
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
    }
    
    func allButtonsEnabled(){
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
    }
    
    func allButtonsNotHidden(){
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
    }
    
    func allButtonsNotEnabled(){
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
    }
}

