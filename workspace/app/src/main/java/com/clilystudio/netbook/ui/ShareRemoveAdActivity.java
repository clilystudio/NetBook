package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View$OnClickListener;

import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.util.T;

import cn.sharesdk.framework.PlatformActionListener;

public class ShareRemoveAdActivity extends BaseActivity {
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, String String2) {
    }

    static void a(ShareRemoveAdActivity ShareRemoveAdActivity1) {
        new cb((Activity) ShareRemoveAdActivity1, (cd) new cf(ShareRemoveAdActivity1)).a().show();
    }

    static void a(ShareRemoveAdActivity ShareRemoveAdActivity1, int int2) {
        Account Account3 = am.e();
        String String4;

        label_12:
        {
            if (Account3 != null) {
                User User5 = Account3.getUser();

                if (User5 != null) {
                    String4 = User5.getId();
                    break label_12;
                }
            }
            String4 = null;
        }
        if (String4 == null)
            com.clilystudio.netbook.util.e.a((Activity) ShareRemoveAdActivity1, "\u83B7\u53D6\u7528\u6237\u4FE1\u606F\u5931\u8D25,\u8BF7\u767B\u5F55\u540E\u91CD\u8BD5");
        else
            T.a((Context) ShareRemoveAdActivity1, "\u6709\u4EBA@\u4F60\uFF0C\u4ECB\u7ECD\u4F60\u4E2A\u65B0\u670B\u53CB", "\u6211\u5BF9\u5979\u5DF2\u7ECF\u6709\u611F\u60C5\u4E86\u3002\u5168\u7F51\u5C0F\u8BF4\u514D\u8D39\u770B\uFF0C\u518D\u6CA1\u6709\u5E7F\u544A\uFF0C\u7B80\u76F4\u5B8C\u7F8E\uFF01", new StringBuilder("http://share.zhuishushenqi.com/invitation-card?recommended=").append(String4).append("&op=rmad7").toString(), "http://statics.zhuishushenqi.com/android-app-icon%2Fthanks_invite.png", int2, (PlatformActionListener) new cg(ShareRemoveAdActivity1));
    }

    protected void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        if (com.clilystudio.netbook.hpay100.a.a.i()) {
            getWindow().setFlags(67108864, 67108864);
            a().a((Drawable) new ColorDrawable(Color.parseColor("#00000000")));
        }
        setContentView(2130903130);
        b(2131034493);
        findViewById(2131493209).setOnClickListener((View$OnClickListener) new ce(this));
    }
}
