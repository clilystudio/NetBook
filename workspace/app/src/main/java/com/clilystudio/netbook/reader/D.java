package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.ChapterKeysRoot;
import com.clilystudio.netbook.model.ChapterKeysRoot$ChapterKey;

import java.util.HashMap;
import java.util.Map;

final class D extends com.clilystudio.netbook.a.c {

    private String a;
    private String b;
    private o c;
    public D(o o1, Activity Activity2, String String3, String String4) {
        super(Activity2, String3);
        c = o1;
        b = String4;
    }

    private transient ChapterKeysRoot a() {
        ChapterKeysRoot ChapterKeysRoot3;

        try {
            if (!(o.a(c) instanceof ReaderActivity))
                return ChapterKeysRoot3;
            a = ((ReaderActivity) o.a(c)).l();
            com.clilystudio.netbook.api.b.a();
            ChapterKeysRoot3 = com.clilystudio.netbook.api.b.b().g(am.e().getToken(), a);
        } catch (Exception Exception1) {
            Exception1.printStackTrace();
            return null;
        }
        return ChapterKeysRoot3;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a();
    }

    public final void a(Object Object1) {
        ChapterKeysRoot ChapterKeysRoot2 = (ChapterKeysRoot) Object1;

        if (ChapterKeysRoot2 != null && ChapterKeysRoot2.isOk()) {
            Object Object3;
            C C4;
            String[] String_1darray5;

            if (ChapterKeysRoot2 != null && ChapterKeysRoot2.isOk()) {
                ChapterKeysRoot$ChapterKey[] ChapterKey_1darray7;
                int int8;
                int int9;

                Object3 = new HashMap((int) ((double) ChapterKeysRoot2.getKeyLength() / 0.69999999999999996));
                ChapterKey_1darray7 = ChapterKeysRoot2.getKeys();
                int8 = ChapterKey_1darray7.length;
                for (int9 = 0; int9 < int8; ++int9) {
                    ChapterKeysRoot$ChapterKey ChapterKey10 = ChapterKey_1darray7[int9];

                    ((HashMap) Object3).put(ChapterKey10.get_id(), ChapterKey10.getKey());
                }
                com.clilystudio.netbook.hpay100.a.a.a(a, (Map) Object3);
            } else {
                Object3 = com.clilystudio.netbook.hpay100.a.a.M(a);
                if (Object3 == null)
                    Object3 = new HashMap();
            }
            MyApplication.a().b().a((Map) Object3);
            C4 = new C(c, o.a(c), "\u6B63\u5728\u83B7\u53D6\u8D44\u4EA7\u4FE1\u606F...");
            String_1darray5 = new String[1];
            String_1darray5[0] = b;
            C4.b(String_1darray5);
        } else
            com.clilystudio.netbook.util.e.a(o.a(c), "\u83B7\u53D6\u4E2A\u4EBA\u4FE1\u606F\u5931\u8D25\uFF0C\u8BF7\u68C0\u67E5\u7F51\u8DEF\u540E\u91CD\u8BD5");
    }
}
