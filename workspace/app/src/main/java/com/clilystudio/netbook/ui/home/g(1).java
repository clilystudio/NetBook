package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.IKanshuUrlResult;

import java.io.IOException;

final class g extends e<Void, Void, IKanshuUrlResult> {
    private g(HomeActivity paramHomeActivity) {
    }

    private static IKanshuUrlResult a() {
        try {
            b.a();
            IKanshuUrlResult localIKanshuUrlResult = b.b().t();
            return localIKanshuUrlResult;
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

