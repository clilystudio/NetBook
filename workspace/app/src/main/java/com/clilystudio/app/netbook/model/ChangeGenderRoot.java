package com.clilystudio.app.netbook.model;

import android.text.TextUtils;

public class ChangeGenderRoot extends Root {
    private String[][] codeMap = {{"TOKEN_INVALID", "身份过期,请重新登录!"}, {"INVALID_GENDER", "性别信息错误"}, {"CHANGED", "已经修改过了!"}};

    public String getErrorMessage() {
        if (TextUtils.isEmpty(getCode()))
            return "";
        for (String[] arrayOfString1 : this.codeMap)
            if (arrayOfString1[0].equals(getCode()))
                return arrayOfString1[1];
        return "更新失败";
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ChangeGenderRoot
 * JD-Core Version:    0.6.2
 */