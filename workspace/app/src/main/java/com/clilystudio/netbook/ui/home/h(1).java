package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UserVipInfo;

import java.io.IOException;

final class h extends e<String, Void, UserVipInfo> {
    h(HomeActivity paramHomeActivity) {
    }

    private UserVipInfo a(String[] paramArrayOfString) {
        try {
            HomeActivity.f(this.a);
            UserVipInfo localUserVipInfo = b.b().O(paramArrayOfString[0]);
            return localUserVipInfo;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}
