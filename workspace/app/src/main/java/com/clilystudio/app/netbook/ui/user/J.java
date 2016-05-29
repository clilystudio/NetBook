package com.clilystudio.app.netbook.ui.user;

import com.clilystudio.app.netbook.a_packA.e;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.UserVipInfo;

import java.io.IOException;

final class J extends e<String, Void, UserVipInfo> {
    J(PayAccountActivity paramPayAccountActivity) {
    }

    private UserVipInfo a(String[] paramArrayOfString) {
        try {
            UserVipInfo localUserVipInfo = b.b().O(paramArrayOfString[0]);
            return localUserVipInfo;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.J
 * JD-Core Version:    0.6.2
 */