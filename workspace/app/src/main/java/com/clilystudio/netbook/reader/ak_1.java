package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Context;
import android.view.View;

import com.clilystudio.netbook.util.e;
import com.iflytek.cloud.SpeechUtility;

import java.util.LinkedList;

final class ak implements com.umeng.update.a {
    private /* synthetic */ ReaderActivity a;

    ak(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void a(int n2) {
        switch (n2) {
            default: {
                return;
            }
            case R.id.read_opt_setting: {
                SettingWidget settingWidget = ReaderActivity.w(this.a);
                boolean bl = !this.a.j();
                settingWidget.setReadOptionEnable(bl);
                ReaderActivity.w(this.a).a();
                return;
            }
            case R.id.read_opt_toc: {
                ReaderActivity.w(this.a).setVisibility(View.GONE);
                ReaderActivity.x(this.a);
                return;
            }
            case R.id.reader_oper_back: {
                ReaderActivity.w(this.a).setVisibility(View.GONE);
                this.a.onBackPressed();
                return;
            }
            case R.id.reader_ab_chapter_url_view: {
                ReaderActivity.w(this.a).setVisibility(View.GONE);
                ReaderActivity.y(this.a);
                return;
            }
            case R.id.reader_ab_topic: {
                ReaderActivity.w(this.a).setVisibility(View.GONE);
                ReaderActivity.z(this.a);
                ReaderActivity.A(this.a).f(false);
                b.a(this.a, "reader_activity_topic");
                return;
            }
            case R.id.reader_ab_read_mode: {
                ReaderActivity.w(this.a).setVisibility(View.GONE);
                this.a.i();
                return;
            }
            case R.id.reader_ab_more: {
                ReaderActivity.w(this.a).setVisibility(View.GONE);
                View view = ReaderActivity.A(this.a).findViewById(R.id.reader_ab_more);
                if (a.i()) {
                    ReaderActivity.a(this.a, view);
                    return;
                }
                ReaderActivity.b(this.a, view);
                return;
            }
            case R.id.read_opt_orientation: {
                ReaderActivity.w(this.a).setVisibility(View.GONE);
                ReaderActivity.b(this.a, true);
                ReaderActivity.B(this.a);
                return;
            }
            case R.id.reader_download: {
                ReaderActivity.w(this.a).setVisibility(View.GONE);
                ReaderActivity.C(this.a);
                return;
            }
            case R.id.reader_ab_tts:
        }
        if (SpeechUtility.getUtility().checkServiceInstalled()) {
            ReaderActivity.f(this.a);
            ReaderActivity.a(this.a, 2);
            ReaderActivity.h(this.a).setReadMode(ReaderActivity.g(this.a));
            Object[] arrobject = ReaderActivity.m(this.a).d();
            if (arrobject != null) {
                ReaderActivity.a(this.a, (String[]) arrobject[0]);
                ReaderActivity.a(this.a, (LinkedList) arrobject[1]);
                ReaderActivity.c(this.a, false);
                ReaderActivity.o(this.a);
                b.a(this.a, "tts_start_speaking", ReaderActivity.D(this.a));
                b.a((Context) this.a, "tts_start_speaking_message", null, 1);
                a.J(this.a);
                ReaderActivity.E(this.a);
                return;
            }
            e.a((Activity) this.a, "\u83b7\u53d6\u7ae0\u8282\u5185\u5bb9\u5931\u8d25,\u8bf7\u9000\u51fa\u540e\u91cd\u8bd5");
            return;
        }
        if (ReaderActivity.a != null && !"".equals(ReaderActivity.a)) {
            a.a(ReaderActivity.a, this.a, "\u8ffd\u4e66\u795e\u5668\u6717\u8bfb\u63d2\u4ef6");
            return;
        }
        ReaderActivity.F(this.a);
    }
}
