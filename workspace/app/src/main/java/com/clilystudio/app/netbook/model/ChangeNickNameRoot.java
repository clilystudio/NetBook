package com.clilystudio.app.netbook.model;

import android.text.TextUtils;

public class ChangeNickNameRoot extends CodeRoot {
    private String[][] codeMap = {{"LV_NOT_ENOUGH", "等级不够"}, {"TOO_LONG", "名字太长"}, {"ILLEGAL_NICKNAME", "不合法的名字"}, {"TOO_OFTEN", "修改间隔少于30天"}};

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
 * Qualified Name:     com.clilystudio.app.netbook.model.ChangeNickNameRoot
 * JD-Core Version:    0.6.2
 */