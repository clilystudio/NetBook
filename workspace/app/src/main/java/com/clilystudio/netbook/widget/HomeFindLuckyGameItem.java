package com.clilystudio.netbook.widget;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.ui.LuckyGameWebActivity;
import com.umeng.a.b;

public class HomeFindLuckyGameItem extends HomeFindItem {
    public HomeFindLuckyGameItem(Activity paramActivity) {
        super(paramActivity, "召唤神器", 2130837827, null);
    }

    public HomeFindLuckyGameItem(Context paramContext, AttributeSet paramAttributeSet) {
        super(paramContext, paramAttributeSet);
    }

    private void b() {
        setVisibility(0);
        this.mSubFlag.setVisibility(8);
        this.mSubText.setVisibility(8);
    }

    public final void a() {
        int i = 1;
        Context localContext1 = getContext();
        String str1 = am.n(localContext1);
        String str2 = b.b(localContext1, "home_lucky_game_channel");
        int n;
        if ((str2 != null) && (str2.length() > 0)) {
            String[] arrayOfString = str2.split(",");
            int m = arrayOfString.length;
            n = 0;
            if (n < m)
                if (!arrayOfString[n].equals(str1)) ;
        }
        for (int j = i; ; j = 0) {
            if (j == 0)
                break label94;
            b();
            return;
            n++;
            break;
        }
        label94:
        Context localContext2 = getContext();
        int k = a.b(b.b(localContext2, "home_lucky_game_toggle"), 0);
        if (am.f(localContext2) < k) ;
        while (i != 0) {
            b();
            return;
            i = 0;
        }
        setVisibility(8);
    }

    protected final void a(Context paramContext, String paramString) {
        Account localAccount = am.a((Activity) paramContext);
        if (localAccount != null)
            paramContext.startActivity(LuckyGameWebActivity.a(paramContext, paramString, String.format("http://share.zhuishushenqi.com/game/index?token=%s", new Object[]{localAccount.getToken()})));
    }
}

