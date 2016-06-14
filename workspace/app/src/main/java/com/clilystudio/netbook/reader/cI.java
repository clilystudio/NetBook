package com.clilystudio.netbook.reader;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.model.mixtoc.EsTocItem;
import com.clilystudio.netbook.model.mixtoc.EsTocRoot;
import com.clilystudio.netbook.util.e;

final class cI extends c<String, EsTocRoot> {
    private int a;
    private /* synthetic */ ReaderWebActivity b;

    public cI(ReaderWebActivity readerWebActivity, Activity activity, int n) {
        this.b = readerWebActivity;
        super(activity, 2131034218);
        this.a = n;
    }

    private /* varargs */ EsTocRoot a(String... arrstring) {
        try {
            EsTocRoot esTocRoot = b.b().v(arrstring[0]);
            return esTocRoot;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        EsTocRoot esTocRoot = (EsTocRoot) object;
        if (esTocRoot != null && esTocRoot.getItems() != null && esTocRoot.getItems().length > 0) {
            EsTocItem[] arresTocItem = esTocRoot.getItems();
            if (this.a < 0 || this.a >= arresTocItem.length) {
                this.a = 0;
            }
            EsTocItem esTocItem = arresTocItem[this.a];
            ReaderWebActivity.a(this.b, 1 + this.a, esTocItem.getCurl());
            return;
        }
        e.a((Activity) this.b, (String) "\u8f7d\u5165\u5931\u8d25");
    }
}
