package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.util.e;
import com.iflytek.cloud.SpeechUtility;

import java.util.LinkedList;

final class ak implements com.umeng.update.a {

    private ReaderActivity a;

    ak(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    public final void a(int int1) {
        switch (int1) {
            default:
                return;
            case 2131493890:
                SettingWidget SettingWidget8 = ReaderActivity.w(a);
                boolean boolean9;

                if (!a.j())
                    boolean9 = true;
                else
                    boolean9 = false;
                SettingWidget8.setReadOptionEnable(boolean9);
                ReaderActivity.w(a).a();
                return;
            case 2131493892:
                ReaderActivity.w(a).setVisibility(8);
                ReaderActivity.x(a);
                return;
            case 2131493881:
                ReaderActivity.w(a).setVisibility(8);
                a.onBackPressed();
                return;
            case 2131493893:
                ReaderActivity.w(a).setVisibility(8);
                ReaderActivity.y(a);
                return;
            case 2131493861:
                ReaderActivity.w(a).setVisibility(8);
                ReaderActivity.z(a);
                ReaderActivity.A(a).f(false);
                com.umeng.a.b.a((Context) a, "reader_activity_topic");
                return;
            case 2131493862:
                ReaderActivity.w(a).setVisibility(8);
                a.i();
                return;
            case 2131493860:
                View View7;

                ReaderActivity.w(a).setVisibility(8);
                View7 = ReaderActivity.A(a).findViewById(2131493860);
                if (com.clilystudio.netbook.hpay100.a.a.i())
                    ReaderActivity.a(a, View7);
                else
                    ReaderActivity.b(a, View7);
                return;
            case 2131493888:
                ReaderActivity.w(a).setVisibility(8);
                ReaderActivity.b(a, true);
                ReaderActivity.B(a);
                return;
            case 2131493891:
                ReaderActivity.w(a).setVisibility(8);
                ReaderActivity.C(a);
                return;
            case 2131493859:
                if (SpeechUtility.getUtility().checkServiceInstalled()) {
                    Object[] Object_1darray3;

                    ReaderActivity.f(a);
                    ReaderActivity.a(a, 2);
                    ReaderActivity.h(a).setReadMode(ReaderActivity.g(a));
                    Object_1darray3 = ReaderActivity.m(a).d();
                    if (Object_1darray3 != null) {
                        ReaderActivity.a(a, (String[]) Object_1darray3[0]);
                        ReaderActivity.a(a, (LinkedList) Object_1darray3[1]);
                        ReaderActivity.c(a, false);
                        ReaderActivity.o(a);
                        com.umeng.a.b.a((Context) a, "tts_start_speaking", ReaderActivity.D(a));
                        com.umeng.a.b.a((Context) a, "tts_start_speaking_message", null, 1);
                        com.clilystudio.netbook.hpay100.a.a.J((Context) a);
                        ReaderActivity.E(a);
                    } else
                        e.a((Activity) a, "\u83B7\u53D6\u7AE0\u8282\u5185\u5BB9\u5931\u8D25,\u8BF7\u9000\u51FA\u540E\u91CD\u8BD5");
                } else if (ReaderActivity.a == null || "".equals(ReaderActivity.a))
                    ReaderActivity.F(a);
                else
                    com.clilystudio.netbook.hpay100.a.a.a(ReaderActivity.a, (Activity) a, "\u8FFD\u4E66\u795E\u5668\u6717\u8BFB\u63D2\u4EF6");
                return;
        }
    }
}
