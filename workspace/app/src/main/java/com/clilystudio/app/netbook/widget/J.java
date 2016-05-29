package com.clilystudio.app.netbook.widget;

import android.app.Activity;

import com.clilystudio.app.netbook.a_packA.c;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GameGiftResponse;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.J
 * JD-Core Version:    0.6.2
 */