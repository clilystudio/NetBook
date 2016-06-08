package com.clilystudio.netbook.util;

import android.content.Context;

import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.model.Account;

public class J {
    private static J a;
    private int b;
    private int c;
    private Context d;

    private J(Context paramContext) {
        this.d = paramContext;
    }

    public static J a(Context paramContext) {
        monitorenter;
        try {
            if (a == null)
                a = new J(paramContext);
            J localJ = a;
            return localJ;
        } finally {
            monitorexit;
        }
        throw localObject;
    }

    public final int a() {
        return this.b;
    }

    public final void a(int paramInt) {
        this.b = 0;
    }

    public final void a(Account paramAccount) {
        if (paramAccount != null) {
            K localK = new K(this);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = paramAccount.getToken();
            localK.b(arrayOfString);
        }
    }

    public final int b() {
        return this.c;
    }

    public final void b(int paramInt) {
        this.c = 0;
    }

    public final void c() {
        Account localAccount = am.e();
        if (localAccount != null) {
            L localL = new L(this);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = localAccount.getToken();
            localL.b(arrayOfString);
        }
    }

    public final void d() {
        Account localAccount = am.e();
        if (localAccount != null) {
            M localM = new M(this);
            String[] arrayOfString = new String[1];
            arrayOfString[0] = localAccount.getToken();
            localM.b(arrayOfString);
        }
    }

    public final int e() {
        Account localAccount = am.e();
        if (localAccount == null) ;
        while (true) {
            return 0;
            if ((this.b != 0) || (this.c == 0))
                break;
            if (AccountInfo.getPreUnimpCount(localAccount.getToken()) < this.c)
                return -1;
        }
        return this.b;
    }
}

