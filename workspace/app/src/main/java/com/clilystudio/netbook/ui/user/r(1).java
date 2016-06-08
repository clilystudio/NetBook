package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UserInfo;

import java.io.IOException;

final class r extends e<String, Void, UserInfo> {
    private r(ModifyUserInfoActivity paramModifyUserInfoActivity) {
    }

    private UserInfo a(String[] paramArrayOfString) {
        try {
            UserInfo localUserInfo = b.b().K(paramArrayOfString[0]);
            return localUserInfo;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

