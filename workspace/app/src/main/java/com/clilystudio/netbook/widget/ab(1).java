package com.clilystudio.netbook.widget;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.HotCommentRoot;

final class ab extends e<String, Void, HotCommentRoot> {
    private ab(HotCommentView paramHotCommentView) {
    }

    private static HotCommentRoot a(String[] paramArrayOfString) {
        try {
            b.a();
            HotCommentRoot localHotCommentRoot = b.b().T(paramArrayOfString[0]);
            return localHotCommentRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

