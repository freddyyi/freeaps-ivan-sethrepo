//
//  OverrideEmojiDataSource.swift
//  LoopKitUI
//
//  Created by Michael Pangburn on 1/7/19.
//  Copyright ยฉ 2019 LoopKit Authors. All rights reserved.
//

func OverrideSymbolInputController() -> EmojiInputController {
    return EmojiInputController.instance(withEmojis: OverrideEmojiDataSource())
}


private final class OverrideEmojiDataSource: EmojiDataSource {

    private static let activity = [
        "๐ถโโ๏ธ", "๐ถโโ๏ธ", "๐โโ๏ธ", "๐โโ๏ธ", "๐", "๐บ",
        "โฝ๏ธ", "๐", "๐", "โพ๏ธ", "๐ฅ", "๐พ",
        "๐", "๐", "๐ฅ", "๐ณ", "๐", "๐ธ",
        "๐", "๐", "๐ฅ", "๐", "โณ๏ธ", "๐น",
        "๐ฅ", "๐ฅ", "๐น", "โธ", "๐ฅ", "๐ท",
        "โท", "๐", "๐๏ธโโ๏ธ", "๐๏ธโโ๏ธ", "๐คผโโ๏ธ", "๐คผโโ๏ธ",
        "๐คธโโ๏ธ", "๐คธโโ๏ธ", "โน๏ธโโ๏ธ", "โน๏ธโโ๏ธ", "๐คบ", "๐คพโโ๏ธ",
        "๐คพโโ๏ธ", "๐๏ธโโ๏ธ", "๐๏ธโโ๏ธ", "๐", "๐งโโ๏ธ", "๐งโโ๏ธ",
        "๐โโ๏ธ", "๐โโ๏ธ", "๐โโ๏ธ", "๐โโ๏ธ", "๐คฝโโ๏ธ", "๐คฝโโ๏ธ",
        "๐ฃโโ๏ธ", "๐ฃโโ๏ธ", "๐งโโ๏ธ", "๐งโโ๏ธ", "๐ตโโ๏ธ", "๐ตโโ๏ธ",
        "๐ดโโ๏ธ", "๐ดโโ๏ธ", "๐ช", "๐คนโโ๏ธ", "๐คนโโ๏ธ", "๐ญ",
        "๐ค", "๐ฏ", "๐ณ", "๐ฅพ", "โบ๏ธ", "๐",
    ]

    private static let condition = [
        "๐ค", "๐คข", "๐คฎ", "๐ท", "๐ค", "๐ฐ",
        "๐ฅต", "๐ฅถ", "๐", "๐งโโ๏ธ", "๐งโโ๏ธ", "๐",
        "๐", "๐ธ", "๐","โฐ", "๐", "๐",
        "โ๏ธ", "๐ข",
    ]

    private static let other = [
        "โ", "โ", "โฌ๏ธ", "โฌ๏ธ",
        "โ๏ธ", "โ", "โผ๏ธ", "โ๏ธ", "โ", "โ ๏ธ",
        "0๏ธโฃ", "1๏ธโฃ", "2๏ธโฃ", "3๏ธโฃ", "4๏ธโฃ", "5๏ธโฃ",
        "6๏ธโฃ", "7๏ธโฃ", "8๏ธโฃ", "9๏ธโฃ", "๐",
    ]

    let sections: [EmojiSection]

    init() {
        sections = [
            EmojiSection(
                title: LocalizedString("Activity", comment: "The title for the custom preset emoji activity section"),
                items: type(of: self).activity,
                indexSymbol: " ๐โโ๏ธ "
            ),
            EmojiSection(
                title: LocalizedString("Condition", comment: "The title for the custom preset emoji condition section"),
                items: type(of: self).condition,
                indexSymbol: "๐ค"
            ),
            EmojiSection(
                title: LocalizedString("Other", comment: "The title for custom preset emoji miscellaneous section"),
                items: type(of: self).other,
                indexSymbol: "โฏ "
            )
        ]
    }
}
