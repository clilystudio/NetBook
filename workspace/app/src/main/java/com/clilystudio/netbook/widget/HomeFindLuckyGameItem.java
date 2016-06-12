package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.LuckyGameWebActivity;

public class HomeFindLuckyGameItem extends HomeFindItem {

    public HomeFindLuckyGameItem(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public HomeFindLuckyGameItem(Activity Activity1) {
        super((Context) Activity1, "\u53EC\u5524\u795E\u5668", 2130837827, null);
    }

    private void b() {
        setVisibility(0);
        mSubFlag.setVisibility(8);
        mSubText.setVisibility(8);
    }

    public final void a() {
        int int1 = 1;
        Context Context2 = getContext();
        String String3 = am.n(Context2);
        String String4 = com.clilystudio.netbook.umeng.a.b.b(Context2, "home_lucky_game_channel");
        int int5;

        label_37:
        {
            if (String4 != null && String4.length() > 0) {
                String[] String_1darray8 = String4.split(",");
                int int9 = String_1darray8.length;
                int int10 = 0;

                while (int10 < int9) {
                    if (String_1darray8[int10].equals(String3)) {
                        int5 = int1;
                        break label_37;
                    } else
                        ++int10;
                }
            }
            int5 = 0;
        }
        if (int5 != 0)
            b();
        else {
            Context Context6 = getContext();
            int int7 = com.clilystudio.netbook.hpay100.a.a.b(com.clilystudio.netbook.umeng.a.b.b(Context6, "home_lucky_game_toggle"), 0);

            if (am.f(Context6) >= int7)
                int1 = 0;
            if (int1 != 0)
                b();
            else
                setVisibility(8);
        }
    }

    protected final void a(Context Context1, String String2) {
        Account Account3 = am.a((Activity) Context1);

        if (Account3 != null)
            Context1.startActivity(LuckyGameWebActivity.a(Context1, String2, String.format("http://share.zhuishushenqi.com/game/index?token=%s", new Object[]{Account3.getToken()})));
    }
}
