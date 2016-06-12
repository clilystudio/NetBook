package com.clilystudio.netbook.model;

import android.text.TextUtils;

public class ChangeGenderRoot extends Root {

    private String[][] codeMap = {
            {"TOKEN_INVALID", "\u8EAB\u4EFD\u8FC7\u671F,\u8BF7\u91CD\u65B0\u767B\u5F55!"},
            {"INVALID_GENDER", "\u6027\u522B\u4FE1\u606F\u9519\u8BEF"},
            {"CHANGED", "\u5DF2\u7ECF\u4FEE\u6539\u8FC7\u4E86!"}
    };

    public String getErrorMessage() {
        if (TextUtils.isEmpty((CharSequence) getCode()))
            return "";
        else {
            String[][] String_2darray1 = codeMap;
            int int2 = String_2darray1.length;
            int int3 = 0;

            while (int3 < int2) {
                String[] String_1darray4 = String_2darray1[int3];

                if (String_1darray4[0].equals(getCode()))
                    return String_1darray4[1];
                else
                    ++int3;
            }
            return "\u66F4\u65B0\u5931\u8D25";
        }
    }
}
