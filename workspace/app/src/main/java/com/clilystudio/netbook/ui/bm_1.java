package com.clilystudio.netbook.ui;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.MhdListRoot;
import com.clilystudio.netbook.util.e;

import java.io.IOException;

final class bm
        extends com.clilystudio.netbook.a.e<Void, Void, MhdListRoot> {
    private /* synthetic */ MhdListActivity a;

    private bm(MhdListActivity mhdListActivity) {
        this.a = mhdListActivity;
    }

    /* synthetic */ bm(MhdListActivity mhdListActivity, byte by) {
        this(mhdListActivity);
    }

    private /* varargs */ MhdListRoot a() {
        try {
            MhdListRoot mhdListRoot = b.b().g();
            return mhdListRoot;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    /*
     * Exception decompiling
     */
    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        // This method has failed to decompile.  When submitting a bug report, please provide this stack trace, and (if you hold appropriate legal rights) the relevant class file.
        // java.lang.ArrayIndexOutOfBoundsException
        throw new IllegalStateException("Decompilation failed");
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        MhdListRoot mhdListRoot = (MhdListRoot) object;
        super.onPostExecute(mhdListRoot);
        if (mhdListRoot != null && mhdListRoot.getInfo() != null && mhdListRoot.getInfo().length > 0) {
            MhdListActivity.a(this.a, 1);
            MhdListActivity.b(this.a).a(mhdListRoot.getInfo());
            return;
        }
        MhdListActivity.a(this.a, 2);
        e.a((Activity) this.a, 2131034408);
    }
}
