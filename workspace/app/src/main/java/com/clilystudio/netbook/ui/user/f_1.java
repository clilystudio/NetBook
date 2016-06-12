package com.clilystudio.netbook.ui.user;

import android.app.Activity;
import android.content.Context;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.t;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.util.e;

final class f extends com.clilystudio.netbook.a.c {

    private AuthLoginActivity a;

    public f(AuthLoginActivity AuthLoginActivity1, Activity Activity2, int int3) {
        super(Activity2, 2131034409);
        a = AuthLoginActivity1;
    }

    private static transient Account a(String[] String_1darray1) {
        Account Account4;

        try {
            com.clilystudio.netbook.api.b.a();
            Account4 = com.clilystudio.netbook.api.b.b().g(String_1darray1[0], String_1darray1[1], String_1darray1[2]);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            return null;
        }
        return Account4;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        Account Account2 = (Account) Object1;

        if (Account2 != null && Account2.getUser() != null && Account2.getToken() != null) {
            if (Account2.isOk()) {
                Object Object6;

                com.clilystudio.netbook.api.b.a();
                com.clilystudio.netbook.api.b.b().h(Account2.getUser().getId());
                com.a.a.a.a((Context) a, Account2.getUser().getId());
                MyApplication.a().a(Account2);
                Object6 = new t(Account2);
                ((t) Object6).a((AuthLoginActivity$Source) a.getIntent().getSerializableExtra("KEY_SOURCE"));
                i.a().c(Object6);
                e.a((Activity) a, "\u767B\u5F55\u6210\u529F");
            } else {
                String String3 = Account2.getCode();

                if ("AUTHENTICATION_FAILED".equals(String3))
                    e.a((Activity) a, 2131034315);
                else if ("BANNED_USER".equals(String3))
                    e.a((Activity) a, "\u767B\u5F55\u5931\u8D25\uFF0C\u8BE5\u8D26\u6237\u88AB\u5C01\u7981");
                else
                    e.a((Activity) a, "\u767B\u5F55\u5931\u8D25\uFF0C\u8BF7\u91CD\u8BD5");
            }
        } else
            e.a((Activity) a, "\u767B\u5F55\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u7EDC\u6216\u8005\u7A0D\u540E\u518D\u8BD5");
        a.finish();
    }
}
