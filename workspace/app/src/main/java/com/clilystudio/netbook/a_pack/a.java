package com.clilystudio.netbook.a_pack;

import android.app.Activity;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.TocSourceRoot;

public abstract class a extends c<String, TocSourceRoot> {
    public a(Activity activity, boolean bl) {
        super(activity, R.string.loading, bl);
    }

    public TocSourceRoot a(String... arrstring) {
        b.a();
        TocSourceRoot tocSourceRoot = b.b().g(arrstring[0]);
        return tocSourceRoot;
    }

    protected void a() {
    }

    @Override
    public final void a(TocSourceRoot object) {
        if (object != null && object.getSources() != null) {
            this.a(object);
        } else {
            this.a();
        }
    }
}
