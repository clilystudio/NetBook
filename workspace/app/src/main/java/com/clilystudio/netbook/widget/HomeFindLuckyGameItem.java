package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import com.clilystudio.netbook.am;
import android.util.AttributeSet;

import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.LuckyGameWebActivity;
import com.umeng.a.b;

public class HomeFindLuckyGameItem extends HomeFindItem {
    public HomeFindLuckyGameItem(Activity activity) {
        super(activity, "\u53ec\u5524\u795e\u5668", 2130837827, null);
    }

    public HomeFindLuckyGameItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void b() {
        this.setVisibility(View.VISIBLE);
        this.mSubFlag.setVisibility(View.GONE);
        this.mSubText.setVisibility(View.GONE);
    }

    /*
     * Enabled aggressive block sorting
     */
    public final void a() {
        boolean bl;
        boolean bl2 = true;
        Context context = this.getContext();
        String string = am.n((Context) context);
        String string2 = b.b(context, "home_lucky_game_channel");
        if (string2 != null && string2.length() > 0) {
            String[] arrstring = string2.split(",");
            int n = arrstring.length;
            for (int j = 0; j < n; ++j) {
                if (!arrstring[j].equals(string)) continue;
                bl = bl2;
                break;
            }
        } else {
            bl = false;
        }
        if (bl) {
            this.b();
            return;
        }
        Context context2 = this.getContext();
        int n = a.b(b.b(context2, "home_lucky_game_toggle"), 0);
        if (am.f((Context) context2) >= n) {
            bl2 = false;
        }
        if (bl2) {
            this.b();
            return;
        }
        this.setVisibility(View.GONE);
    }

    @Override
    protected final void a(Context context, String string) {
        Account account = am.a((Activity) ((Activity) context));
        if (account != null) {
            context.startActivity(LuckyGameWebActivity.a(context, string, String.format("http://share.zhuishushenqi.com/game/index?token=%s", account.getToken())));
        }
    }
}
