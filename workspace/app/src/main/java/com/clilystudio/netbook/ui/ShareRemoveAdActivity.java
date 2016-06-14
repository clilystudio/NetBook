package com.clilystudio.netbook.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.design.widget.am;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.hpay100.a.a;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.util.T;
import com.clilystudio.netbook.util.e;

public class ShareRemoveAdActivity extends BaseActivity {
    public static Intent a(Context context, String string) {
        return new d().a(context, ShareRemoveAdActivity.class).a("entrance_type", string).a();
    }

    static /* synthetic */ void a(ShareRemoveAdActivity shareRemoveAdActivity) {
        new cb(shareRemoveAdActivity, new cf(shareRemoveAdActivity)).a().show();
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(ShareRemoveAdActivity shareRemoveAdActivity, int n) {
        User user;
        Account account = am.e();
        String string = account != null && (user = account.getUser()) != null ? user.getId() : null;
        if (string == null) {
            e.a((Activity) shareRemoveAdActivity, (String) "\u83b7\u53d6\u7528\u6237\u4fe1\u606f\u5931\u8d25,\u8bf7\u767b\u5f55\u540e\u91cd\u8bd5");
            return;
        }
        T.a(shareRemoveAdActivity, "\u6709\u4eba@\u4f60\uff0c\u4ecb\u7ecd\u4f60\u4e2a\u65b0\u670b\u53cb", "\u6211\u5bf9\u5979\u5df2\u7ecf\u6709\u611f\u60c5\u4e86\u3002\u5168\u7f51\u5c0f\u8bf4\u514d\u8d39\u770b\uff0c\u518d\u6ca1\u6709\u5e7f\u544a\uff0c\u7b80\u76f4\u5b8c\u7f8e\uff01", "http://share.zhuishushenqi.com/invitation-card?recommended=" + string + "&op=rmad7", "http://statics.zhuishushenqi.com/android-app-icon%2Fthanks_invite.png", n, new cg(shareRemoveAdActivity));
    }

    @Override
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (a.i()) {
            this.getWindow().setFlags(67108864, 67108864);
            this.a().a((Drawable) new ColorDrawable(Color.parseColor("#00000000")));
        }
        this.setContentView(2130903130);
        this.b(2131034493);
        this.findViewById(2131493209).setOnClickListener(new ce(this));
    }
}
