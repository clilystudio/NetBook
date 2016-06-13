package com.clilystudio.netbook.model;

import android.text.TextUtils;

public class ChangeNickNameRoot
        extends CodeRoot {
    private String[][] codeMap = new String[][]{{"LV_NOT_ENOUGH", "\u7b49\u7ea7\u4e0d\u591f"}, {"TOO_LONG", "\u540d\u5b57\u592a\u957f"}, {"ILLEGAL_NICKNAME", "\u4e0d\u5408\u6cd5\u7684\u540d\u5b57"}, {"TOO_OFTEN", "\u4fee\u6539\u95f4\u9694\u5c11\u4e8e30\u5929"}};

    public String getErrorMessage() {
        if (TextUtils.isEmpty(this.getCode())) {
            return "";
        }
        for (String[] arrstring : this.codeMap) {
            if (!arrstring[0].equals(this.getCode())) continue;
            return arrstring[1];
        }
        return "\u66f4\u65b0\u5931\u8d25";
    }
}
