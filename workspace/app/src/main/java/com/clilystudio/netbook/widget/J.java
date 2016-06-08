package com.clilystudio.netbook.widget;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GameGiftResponse;

final class J extends c<String, GameGiftResponse> {
    public J(GameGiftItemView paramGameGiftItemView, Activity paramActivity) {
        super(paramActivity);
    }

    private static GameGiftResponse a(String[] paramArrayOfString) {
        try {
            b.a();
            GameGiftResponse localGameGiftResponse = b.b().K(paramArrayOfString[0], paramArrayOfString[1]);
            return localGameGiftResponse;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return null;
    }
}

