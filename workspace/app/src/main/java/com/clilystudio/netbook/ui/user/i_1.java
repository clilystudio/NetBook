package com.clilystudio.netbook.ui.user;

import android.support.design.widget.am;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.DeleteResult;

final class i
        extends e<Void, Void, DeleteResult> {
    private /* synthetic */ ChargeActivity a;

    private i(ChargeActivity chargeActivity) {
        this.a = chargeActivity;
    }

    /* synthetic */ i(ChargeActivity chargeActivity, byte by) {
        this(chargeActivity);
    }

    private /* varargs */ DeleteResult a() {
        try {
            b.a();
            DeleteResult deleteResult = b.b().e(ChargeActivity.c(this.a), am.e().getToken());
            return deleteResult;
        } catch (Exception var1_2) {
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
}
