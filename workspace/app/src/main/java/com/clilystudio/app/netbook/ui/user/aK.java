package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UserInfo;

import java.io.IOException;

final class aK extends e<String, Void, UserInfo> {
    private aK(UserInfoActivity paramUserInfoActivity) {
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.aK
 * JD-Core Version:    0.6.2
 */