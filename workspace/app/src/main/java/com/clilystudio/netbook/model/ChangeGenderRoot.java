package com.clilystudio.netbook.model;

import android.text.TextUtils;

public class ChangeGenderRoot
        extends Root {
    private String[][] codeMap = new String[][]{{"TOKEN_INVALID", "\u8eab\u4efd\u8fc7\u671f,\u8bf7\u91cd\u65b0\u767b\u5f55!"}, {"INVALID_GENDER", "\u6027\u522b\u4fe1\u606f\u9519\u8bef"}, {"CHANGED", "\u5df2\u7ecf\u4fee\u6539\u8fc7\u4e86!"}};

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
