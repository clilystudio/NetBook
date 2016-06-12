package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.ui.game.GameTabActivity;

public class HomeFindGameItem extends HomeFindItem {

    private String a;

    public HomeFindGameItem(Context Context1, AttributeSet AttributeSet2) {
        super(Context1, AttributeSet2);
    }

    public HomeFindGameItem(Activity Activity1) {
        super((Context) Activity1, "\u6E38\u620F\u4E2D\u5FC3", 2130837824, null);
    }

    public final void a() {
        if (com.clilystudio.netbook.hpay100.a.a.w(getContext())) {
            setVisibility(0);
            mSubFlag.setVisibility(8);
            mSubText.setVisibility(8);
            a = com.clilystudio.netbook.umeng.a.b.b(getContext(), "home_game_center_value");
            if ("1".equals(a)) {
                if (com.clilystudio.netbook.hpay100.a.a.l(getContext(), "sp_find_item_game_dot")) {
                    mSubFlag.setVisibility(0);
                    mSubText.setVisibility(8);
                    mSubFlag.setImageResource(2130838025);
                }
            } else if (!android.text.TextUtils.isEmpty((CharSequence) a) && !"0".equals(a)) {
                String String1 = com.clilystudio.netbook.hpay100.a.a.d(getContext(), "sp_find_item_game_tips", null);

                if (!a.equals(String1)) {
                    mSubFlag.setVisibility(8);
                    mSubText.setVisibility(0);
                    mSubText.setText((CharSequence) a);
                    return;
                }
            }
        } else
            setVisibility(8);
    }

    protected final void a(Context Context1, String String2) {
        Context1.startActivity(GameTabActivity.a(Context1));
        if (!android.text.TextUtils.isEmpty((CharSequence) a)) {
            com.clilystudio.netbook.hpay100.a.a.b(Context1, "sp_find_item_game_dot", false);
            com.clilystudio.netbook.hpay100.a.a.e(Context1, "sp_find_item_game_tips", a);
            mSubFlag.setVisibility(8);
            mSubText.setVisibility(8);
        }
        com.clilystudio.netbook.umeng.a.b.a(Context1, "GameCenterActivity_open");
    }
}
