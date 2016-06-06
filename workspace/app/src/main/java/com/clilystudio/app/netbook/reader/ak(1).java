package com.clilystudio.app.netbook.reader;

import android.os.Build;
import android.view.View;

import com.clilystudio.app.netbook.util.e;
import com.iflytek.cloud.SpeechUtility;

import java.util.LinkedList;

final class ak
        implements com.umeng.update.a {
    ak(ReaderActivity paramReaderActivity) {
    }

    public final void a(int paramInt) {
        switch (paramInt) {
            default:
                return;
            case 2131493890:
                SettingWidget localSettingWidget = ReaderActivity.w(this.a);
                if (!this.a.j()) ;
                for (boolean bool = true; ; bool = false) {
                    localSettingWidget.setReadOptionEnable(bool);
                    ReaderActivity.w(this.a).a();
                    return;
                }
            case 2131493892:
                ReaderActivity.w(this.a).setVisibility(8);
                ReaderActivity.x(this.a);
                return;
            case 2131493881:
                ReaderActivity.w(this.a).setVisibility(8);
                this.a.onBackPressed();
                return;
            case 2131493893:
                ReaderActivity.w(this.a).setVisibility(8);
                ReaderActivity.y(this.a);
                return;
            case 2131493861:
                ReaderActivity.w(this.a).setVisibility(8);
                ReaderActivity.z(this.a);
                ReaderActivity.A(this.a).f(false);
                b.a(this.a, "reader_activity_topic");
                return;
            case 2131493862:
                ReaderActivity.w(this.a).setVisibility(8);
                this.a.i();
                return;
            case 2131493860:
                ReaderActivity.w(this.a).setVisibility(8);
                View localView = ReaderActivity.A(this.a).findViewById(2131493860);
                if (Build.VERSION.SDK_INT > 19) {
                    ReaderActivity.a(this.a, localView);
                    return;
                }
                ReaderActivity.b(this.a, localView);
                return;
            case 2131493888:
                ReaderActivity.w(this.a).setVisibility(8);
                ReaderActivity.b(this.a, true);
                ReaderActivity.B(this.a);
                return;
            case 2131493891:
                ReaderActivity.w(this.a).setVisibility(8);
                ReaderActivity.C(this.a);
                return;
            case 2131493859:
        }
        if (SpeechUtility.getUtility().checkServiceInstalled()) {
            ReaderActivity.f(this.a);
            ReaderActivity.a(this.a, 2);
            ReaderActivity.h(this.a).setReadMode(ReaderActivity.g(this.a));
            Object[] arrayOfObject = ReaderActivity.m(this.a).d();
            if (arrayOfObject != null) {
                ReaderActivity.a(this.a, (String[]) arrayOfObject[0]);
                ReaderActivity.a(this.a, (LinkedList) arrayOfObject[1]);
                ReaderActivity.c(this.a, false);
                ReaderActivity.o(this.a);
                b.a(this.a, "tts_start_speaking", ReaderActivity.D(this.a));
                b.a(this.a, "tts_start_speaking_message", null, 1);
                com.arcsoft.hpay100.a.a.J(this.a);
                ReaderActivity.E(this.a);
                return;
            }
            e.a(this.a, "获取章节内容失败,请退出后重试");
            return;
        }
        if ((ReaderActivity.a == null) || ("".equals(ReaderActivity.a))) {
            ReaderActivity.F(this.a);
            return;
        }
        com.arcsoft.hpay100.a.a.a(ReaderActivity.a, this.a, "追书神器朗读插件");
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.ak
 * JD-Core Version:    0.6.2
 */