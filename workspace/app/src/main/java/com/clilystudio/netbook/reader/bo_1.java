package com.clilystudio.netbook.reader;

import android.content.Context;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.model.PayBalance;

import java.io.IOException;

final class bo extends e {

    private ReaderActivity a;

    bo(ReaderActivity ReaderActivity1, byte byte2) {
        this(ReaderActivity1);
    }

    private bo(ReaderActivity ReaderActivity1) {
        a = ReaderActivity1;
    }

    private static transient PayBalance a(String[] String_1darray1) {
        PayBalance PayBalance4;

        try {
            com.clilystudio.netbook.api.b.a();
            PayBalance4 = com.clilystudio.netbook.api.b.b().b(String_1darray1[0]);
        } catch (IOException IOException2) {
            IOException2.printStackTrace();
            return null;
        }
        return PayBalance4;
    }

    public final Object doInBackground(Object[] Object_1darray1) {
        return a((String[]) Object_1darray1);
    }

    protected final void onPostExecute(Object Object1) {
        PayBalance PayBalance2 = (PayBalance) Object1;

        if (PayBalance2 != null && PayBalance2.isOk())
            com.clilystudio.netbook.hpay100.a.a.b((Context) a, "user_account_balance", PayBalance2.getBalance() + PayBalance2.getVoucherBalance());
    }
}
