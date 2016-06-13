package com.clilystudio.netbook.ui.ugcbook;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.UgcFilterRoot;
import com.clilystudio.netbook.util.D;

import java.io.IOException;

final class ai
        extends e<Void, Void, UgcFilterRoot> {
    private /* synthetic */ UGCMainActivity a;

    private ai(UGCMainActivity uGCMainActivity) {
        this.a = uGCMainActivity;
    }

    /* synthetic */ ai(UGCMainActivity uGCMainActivity, byte by) {
        this(uGCMainActivity);
    }

    private /* varargs */ UgcFilterRoot a() {
        try {
            UgcFilterRoot ugcFilterRoot = b.b().o();
            return ugcFilterRoot;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] var1_1) {
        return this.a();
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        UgcFilterRoot ugcFilterRoot = (UgcFilterRoot) object;
        super.onPostExecute(ugcFilterRoot);
        if (ugcFilterRoot != null && ugcFilterRoot.isOk() && ugcFilterRoot.getData() != null) {
            UGCMainActivity.a(this.a, new ak(this.a, this.a, ugcFilterRoot.getData()));
            UGCMainActivity.c(this.a).setLayoutManager(new D(this.a));
            UGCMainActivity.c(this.a).setAdapter(UGCMainActivity.d(this.a));
        }
    }
}
