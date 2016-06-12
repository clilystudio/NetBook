package com.clilystudio.netbook.reader.dl;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface$OnClickListener;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.util.e;

import uk.me.lewisdeane.ldialogs.h;

public class a {

    private Activity a;

    public a(Activity Activity1) {
        a = Activity1;
    }

    static void a(a a1, BookReadRecord BookReadRecord2, int int3, int int4) {
        a1.b(BookReadRecord2, int3, int4);
    }

    private void a(BookReadRecord BookReadRecord1, int int2, int int3) {
        if (BookReadRecord1 == null)
            e.a(a, "\u8BF7\u91CD\u8BD5");
        else if (!com.clilystudio.netbook.hpay100.a.a.d())
            e.a(a, "\u65E0\u6CD5\u7F13\u5B58\uFF0C\u8BF7\u68C0\u67E5SD\u5361\u662F\u5426\u6302\u8F7D");
        else if (com.clilystudio.netbook.hpay100.a.a.f(BookReadRecord1.getReadMode()))
            e.b(a, "\u6682\u4E0D\u652F\u6301\u5F53\u524D\u6A21\u5F0F\u7F13\u5B58");
        else if (1 == com.clilystudio.netbook.hpay100.a.a.r((Context) a))
            b(BookReadRecord1, int2, int3);
        else {
            Object Object4 = new b(this, BookReadRecord1, int2, int3);

            new h((Context) a).a(2131034592).b(2131034342).a(2131034336, (DialogInterface$OnClickListener) new c(this, (d) Object4)).b(2131034129, null).b();
        }
    }
// Error: Internal #201: 
// The following method may not be correct.

    private void b(BookReadRecord BookReadRecord1, int int2, int int3) {
    }

    public final void a(BookReadRecord BookReadRecord1) {
        a(BookReadRecord1, 0, 0);
    }

    public final void a(String String1, int int2, int int3) {
        a(BookReadRecord.get(String1), int2, int3);
    }
}
