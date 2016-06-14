package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;

import com.clilystudio.netbook.ui.game.GameTabActivity;
import com.umeng.a.b;

public class HomeFindGameItem extends HomeFindItem {
    private String a;

    public HomeFindGameItem(Activity activity) {
        super(activity, "\u6e38\u620f\u4e2d\u5fc3", 2130837824, null);
    }

    public HomeFindGameItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        if (!a.w(this.getContext())) {
            this.setVisibility(View.GONE);
            return;
        }
        this.setVisibility(View.VISIBLE);
        this.mSubFlag.setVisibility(View.GONE);
        this.mSubText.setVisibility(View.GONE);
        this.a = b.b(this.getContext(), "home_game_center_value");
        if ("1".equals(this.a)) {
            if (!a.l(this.getContext(), "sp_find_item_game_dot")) return;
            {
                this.mSubFlag.setVisibility(View.VISIBLE);
                this.mSubText.setVisibility(View.GONE);
                this.mSubFlag.setImageResource(2130838025);
                return;
            }
        } else {
            String string;
            if (TextUtils.isEmpty(this.a) || "0".equals(this.a) || this.a.equals(string = a.d(this.getContext(), "sp_find_item_game_tips", null))) return;
            {
                this.mSubFlag.setVisibility(View.GONE);
                this.mSubText.setVisibility(View.VISIBLE);
                this.mSubText.setText(this.a);
                return;
            }
        }
    }

    @Override
    protected final void a(Context context, String string) {
        context.startActivity(GameTabActivity.a(context));
        if (!TextUtils.isEmpty(this.a)) {
            a.b(context, "sp_find_item_game_dot", false);
            a.e(context, "sp_find_item_game_tips", this.a);
            this.mSubFlag.setVisibility(View.GONE);
            this.mSubText.setVisibility(View.GONE);
        }
        b.a(context, "GameCenterActivity_open");
    }
}
