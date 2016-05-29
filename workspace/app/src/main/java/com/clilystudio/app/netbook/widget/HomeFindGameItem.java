package com.clilystudio.app.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.ui.game.GameTabActivity;
import com.umeng.a.b;

public class HomeFindGameItem extends HomeFindItem {
    private String a;

    public HomeFindGameItem(Activity paramActivity) {
        super(paramActivity, "游戏中心", 2130837824, null);
    }

    public HomeFindGameItem(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    public final void a() {
        if (a.w(getContext())) {
            setVisibility(0);
            this.mSubFlag.setVisibility(8);
            this.mSubText.setVisibility(8);
            this.a = b.b(getContext(), "home_game_center_value");
            if ("1".equals(this.a))
                if (a.l(getContext(), "sp_find_item_game_dot")) {
                    this.mSubFlag.setVisibility(0);
                    this.mSubText.setVisibility(8);
                    this.mSubFlag.setImageResource(2130838025);
                }
            String str;
            do {
                do
                    return;
                while ((TextUtils.isEmpty(this.a)) || ("0".equals(this.a)));
                str = a.d(getContext(), "sp_find_item_game_tips", null);
            }
            while (this.a.equals(str));
            this.mSubFlag.setVisibility(8);
            this.mSubText.setVisibility(0);
            this.mSubText.setText(this.a);
            return;
        }
        setVisibility(8);
    }

    protected final void a(Context paramContext, String paramString) {
        paramContext.startActivity(GameTabActivity.a(paramContext));
        if (!TextUtils.isEmpty(this.a)) {
            a.b(paramContext, "sp_find_item_game_dot", false);
            a.e(paramContext, "sp_find_item_game_tips", this.a);
            this.mSubFlag.setVisibility(8);
            this.mSubText.setVisibility(8);
        }
        b.a(paramContext, "GameCenterActivity_open");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.HomeFindGameItem
 * JD-Core Version:    0.6.2
 */