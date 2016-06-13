package com.clilystudio.netbook.a;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSourceRoot;

public abstract class a
        extends c<String, TocSourceRoot> {
    public a(Activity activity, boolean bl) {
        super(activity, 2131034218, bl);
    }

    private static /* varargs */ TocSourceRoot a(String... arrstring) {
        try {
            b.a();
            TocSourceRoot tocSourceRoot = b.b().g(arrstring[0]);
            return tocSourceRoot;
        } catch (Exception var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    protected void a() {
    }

    @Override
    protected abstract void a(TocSourceRoot var1);

    @Override
    public final /* synthetic */ void a(Object object) {
        TocSourceRoot tocSourceRoot = (TocSourceRoot) object;
        if (tocSourceRoot != null && tocSourceRoot.getSources() != null) {
            this.a(tocSourceRoot);
            return;
        }
        this.a();
    }
}
