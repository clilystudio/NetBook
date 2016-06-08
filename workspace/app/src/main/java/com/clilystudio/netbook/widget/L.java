package com.clilystudio.netbook.widget;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameGiftRoot;

final class L extends e<String, Void, GameGiftRoot> {
    private L(GameGiftView paramGameGiftView) {
    }

    private static GameGiftRoot a(String[] paramArrayOfString) {
        try {
            b.a();
            GameGiftRoot localGameGiftRoot = b.b().ab(paramArrayOfString[0]);
            return localGameGiftRoot;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

