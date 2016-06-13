package com.clilystudio.netbook.reader;

import android.content.Context;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PayBalance;

import java.io.IOException;

final class bo
        extends e<String, Void, PayBalance> {
    private /* synthetic */ ReaderActivity a;

    private bo(ReaderActivity readerActivity) {
        this.a = readerActivity;
    }

    /* synthetic */ bo(ReaderActivity readerActivity, byte by) {
        this(readerActivity);
    }

    private static /* varargs */ PayBalance a(String... arrstring) {
        try {
            b.a();
            PayBalance payBalance = b.b().b(arrstring[0]);
            return payBalance;
        } catch (IOException var1_2) {
            var1_2.printStackTrace();
            return null;
        }
    }

    @Override
    public final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return bo.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        PayBalance payBalance = (PayBalance) object;
        if (payBalance != null && payBalance.isOk()) {
            a.b((Context) this.a, "user_account_balance", payBalance.getBalance() + payBalance.getVoucherBalance());
        }
    }
}
