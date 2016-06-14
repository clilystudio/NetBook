package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.ChapterSingleKey;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class E
        extends c<String, ChapterSingleKey> {
    private /* synthetic */ o a;

    public E(o o2, Activity activity, int n, boolean bl) {
        this.a = o2;
        super(activity, 2131034218, bl);
    }

    private static /* varargs */ ChapterSingleKey a(String... arrstring) {
        try {
            b.a();
            ChapterSingleKey chapterSingleKey = b.b().f(arrstring[0], am.e().getToken());
            return chapterSingleKey;
        } catch (IOException var1_2) {
            return null;
        }
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        ChapterSingleKey chapterSingleKey = (ChapterSingleKey) object;
        if (chapterSingleKey != null && chapterSingleKey.isOk() && chapterSingleKey.getKey() != null) {
            o.b((o) this.a).q().a().e().put(chapterSingleKey.getChapterId(), chapterSingleKey.getKey());
            if (!o.b((o) this.a).a().getId().equals(chapterSingleKey.getChapterId())) return;
            o.b((o) this.a).a().setKey(chapterSingleKey.getKey());
            o.b((o) this.a).g();
            o.b((o) this.a).a(0);
            if (o.a((o) this.a) instanceof ReaderActivity) {
                ((ReaderActivity) o.a((o) this.a)).g();
                return;
            }
            this.a.e();
            return;
        }
        e.a((Activity) o.a((o) this.a), (String) "\u51fa\u73b0\u5f02\u5e38\uff0c\u8bf7\u9000\u51fa\u9605\u8bfb\u540e\u91cd\u8bd5");
    }
}
