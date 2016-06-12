package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.support.design.widget.am;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.ChapterSingleKey;

import java.io.IOException;

final class E extends c {

    private o a;

    public E(o o1, Activity Activity2, int int3, boolean boolean4) {
        super(Activity2, 2131034218, boolean4);
        a = o1;
    }

    private static transient ChapterSingleKey a(String[] String_1darray1) {
        ChapterSingleKey ChapterSingleKey4;

        try {
            com.clilystudio.netbook.api.b.a();
            ChapterSingleKey4 = com.clilystudio.netbook.api.b.b().f(String_1darray1[0], am.e().getToken());
        } catch (IOException IOException2) {
            return null;
        }
        return ChapterSingleKey4;
    }

    public final volatile Object a(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    public final void a(Object Object1) {
        ChapterSingleKey ChapterSingleKey2 = (ChapterSingleKey) Object1;

        if (ChapterSingleKey2 != null && ChapterSingleKey2.isOk() && ChapterSingleKey2.getKey() != null) {
            o.b(a).q().a().e().put(ChapterSingleKey2.getChapterId(), ChapterSingleKey2.getKey());
            if (o.b(a).a().getId().equals(ChapterSingleKey2.getChapterId())) {
                o.b(a).a().setKey(ChapterSingleKey2.getKey());
                o.b(a).g();
                o.b(a).a(0);
                if (o.a(a) instanceof ReaderActivity)
                    ((ReaderActivity) o.a(a)).g();
                else {
                    a.e();
                    return;
                }
            }
        } else
            com.clilystudio.netbook.util.e.a(o.a(a), "\u51FA\u73B0\u5F02\u5E38\uFF0C\u8BF7\u9000\u51FA\u9605\u8BFB\u540E\u91CD\u8BD5");
    }
}
