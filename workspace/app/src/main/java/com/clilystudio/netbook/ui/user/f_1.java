package com.clilystudio.netbook.ui.user;

import android.app.Activity;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.util.e;

final class f extends c<String, Account> {
    private /* synthetic */ AuthLoginActivity a;

    public f(AuthLoginActivity authLoginActivity, Activity activity, int n) {
        this.a = authLoginActivity;
        super(activity, R.string.login_loading);
    }

    private static /* varargs */ Account a(String... arrstring) {
        try {
            b.a();
            Account account = b.b().g(arrstring[0], arrstring[1], arrstring[2]);
            return account;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        Account account = (Account) object;
        if (account != null && account.getUser() != null && account.getToken() != null) {
            if (account.isOk()) {
                b.a();
                b.b().h(account.getUser().getId());
                a.a(this.a, account.getUser().getId());
                MyApplication.a().a(account);
                t t2 = new t(account);
                t2.a((AuthLoginActivity$Source) ((Object) this.a.getIntent().getSerializableExtra("KEY_SOURCE")));
                i.a().c(t2);
                e.a((Activity) this.a, "\u767b\u5f55\u6210\u529f");
            } else {
                String string = account.getCode();
                if ("AUTHENTICATION_FAILED".equals(string)) {
                    e.a((Activity) this.a, R.string.auth_invalid);
                } else if ("BANNED_USER".equals(string)) {
                    e.a((Activity) this.a, "\u767b\u5f55\u5931\u8d25\uff0c\u8be5\u8d26\u6237\u88ab\u5c01\u7981");
                } else {
                    e.a((Activity) this.a, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5");
                }
            }
        } else {
            e.a((Activity) this.a, "\u767b\u5f55\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u8005\u7a0d\u540e\u518d\u8bd5");
        }
        this.a.finish();
    }
}
