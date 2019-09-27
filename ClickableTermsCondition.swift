private func setupTermsLabel(){
        tvTerms.delegate = self
        
        let text = Strings.termsAndConditionString
        
        let underlineAttriString = NSMutableAttributedString(string: text)
        
        let range1 = (text as NSString).range(of: Strings.termsAndCondition)
        
        underlineAttriString.addAttribute(.link, value: URLs.termsCond, range: range1)
        underlineAttriString.addAttributes([.underlineStyle:NSUnderlineStyle.single.rawValue, NSAttributedString.Key.foregroundColor : UIColor.mainClr], range: range1)
        
        let range2 = (text as NSString).range(of: Strings.privacyPolicy)
        underlineAttriString.addAttribute(.link, value: URLs.privacy, range: range2)
        underlineAttriString.addAttributes([.underlineStyle:NSUnderlineStyle.single.rawValue, NSAttributedString.Key.foregroundColor : UIColor.mainClr], range: range2)
        
        let range = (text as NSString).range(of: text)
        underlineAttriString.addAttribute(.font, value: UIFont.regular(of: 14), range: range)
        
        
        tvTerms.attributedText = underlineAttriString
        tvTerms.textAlignment = .center
    }

func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool {
        if (URL.absoluteString == URLs.termsCond) {
            UIApplication.shared.open(URL)
        }else if (URL.absoluteString == URLs.privacy){
            UIApplication.shared.open(URL)
        }
        return false
    }
