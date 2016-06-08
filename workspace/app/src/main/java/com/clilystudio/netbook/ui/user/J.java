package com.clilystudio.netbook.ui.user;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UserVipInfo;

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

