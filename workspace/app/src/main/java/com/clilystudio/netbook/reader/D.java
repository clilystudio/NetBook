package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterKeysRoot$ChapterKey;
import com.clilystudio.netbook.util.e;

import java.util.HashMap;

final class D
        extends c<Void, ChapterKeysRoot> {
    private String a;
    private String b;
    private /* synthetic */ o c;

    public D(o o2, Activity activity, String string, String string2) {
        this.c = o2;
        super(activity, string);
        this.b = string2;
    }

    private /* varargs */ ChapterKeysRoot a() {
        try {
            if (o.a((o) this.c) instanceof ReaderActivity) {
                this.a = ((ReaderActivity) o.a((o) this.c)).l();
                b.a();
                ChapterKeysRoot chapterKeysRoot = b.b().g(am.e().getToken(), this.a);
                return chapterKeysRoot;
            }
            return null;
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
        ChapterKeysRoot chapterKeysRoot = (ChapterKeysRoot) object;
        if (chapterKeysRoot != null && chapterKeysRoot.isOk()) {
            HashMap hashMap;
            if (chapterKeysRoot != null && chapterKeysRoot.isOk()) {
                hashMap = new HashMap((int) ((double) chapterKeysRoot.getKeyLength() / 0.7));
                for (ChapterKeysRoot$ChapterKey chapterKeysRoot$ChapterKey : chapterKeysRoot.getKeys()) {
                    hashMap.put(chapterKeysRoot$ChapterKey.get_id(), chapterKeysRoot$ChapterKey.getKey());
                }
                a.a(this.a, hashMap);
            } else {
                hashMap = a.M(this.a);
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
            }
            MyApplication.a().b().a(hashMap);
            C c2 = new C(this.c, o.a((o) this.c), "\u6b63\u5728\u83b7\u53d6\u8d44\u4ea7\u4fe1\u606f...");
            String[] arrstring = new String[]{this.b};
            c2.b(arrstring);
            return;
        }
        e.a((Activity) o.a((o) this.c), (String) "\u83b7\u53d6\u4e2a\u4eba\u4fe1\u606f\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u8def\u540e\u91cd\u8bd5");
    }
}
