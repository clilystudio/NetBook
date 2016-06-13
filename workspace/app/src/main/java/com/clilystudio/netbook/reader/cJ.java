package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.model.mixtoc.SgTocChapter;
import com.clilystudio.netbook.model.mixtoc.SgTocRoot;
import com.clilystudio.netbook.util.e;

final class cJ
        extends c<String, SgTocRoot> {
    private int a;
    private String b;
    private /* synthetic */ ReaderWebActivity c;

    public cJ(ReaderWebActivity readerWebActivity, Activity activity, int n, String string) {
        this.c = readerWebActivity;
        super(activity, 2131034218);
        this.a = n;
        this.b = string;
    }

    private /* varargs */ SgTocRoot a(String... arrstring) {
        try {
            SgTocRoot sgTocRoot = b.b().s(arrstring[0]);
            return sgTocRoot;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        SgTocRoot sgTocRoot = (SgTocRoot) object;
        if (sgTocRoot != null && sgTocRoot.getBook() != null && sgTocRoot.getChapter() != null && sgTocRoot.getChapter().length > 0) {
            SgTocChapter sgTocChapter;
            String string = sgTocRoot.getBook().getMd();
            SgTocChapter[] arrsgTocChapter = sgTocRoot.getChapter();
            if (this.a < 0 || this.a >= arrsgTocChapter.length) {
                this.a = 0;
            }
            if (this.b != null) {
                sgTocChapter = ReaderWebActivity.a(this.c, arrsgTocChapter, this.b);
            } else {
                sgTocChapter = arrsgTocChapter[this.a];
                this.b = sgTocChapter.getCmd();
            }
            if (sgTocChapter != null) {
                String string2 = sgTocChapter.getUrl();
                String string3 = sgTocChapter.getName();
                ReaderWebActivity.a(this.c, string, this.b, string2, string3);
                return;
            }
            e.a((Activity) this.c, (String) "\u8f7d\u5165\u5931\u8d25");
            return;
        }
        e.a((Activity) this.c, (String) "\u8f7d\u5165\u5931\u8d25");
    }
}
