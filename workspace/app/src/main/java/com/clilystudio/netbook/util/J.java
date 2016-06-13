package com.clilystudio.netbook.util;

import android.content.Context;
import android.support.design.widget.am;

import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.model.Account;

public class J {
    private static J a;
    private int b;
    private int c;
    private Context d;

    private J(Context context) {
        this.d = context;
    }

    static /* synthetic */ int a(J j, int n) {
        j.b = n;
        return n;
    }

    static /* synthetic */ Context a(J j) {
        return j.d;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    public static J a(Context context) {
        synchronized (J.class) {
            if (a != null) return a;
            a = new J(context);
            return a;
        }
    }

    static /* synthetic */ int b(J j, int n) {
        j.c = n;
        return n;
    }

    public final int a() {
        return this.b;
    }

    public final void a(int n) {
        this.b = 0;
    }

    public final void a(Account account) {
        if (account != null) {
            K k = new K(this);
            String[] arrstring = new String[]{account.getToken()};
            k.b(arrstring);
        }
    }

    public final int b() {
        return this.c;
    }

    public final void b(int n) {
        this.c = 0;
    }

    public final void c() {
        Account account = am.e();
        if (account != null) {
            L l = new L(this);
            String[] arrstring = new String[]{account.getToken()};
            l.b(arrstring);
        }
    }

    public final void d() {
        Account account = am.e();
        if (account != null) {
            M m = new M(this);
            String[] arrstring = new String[]{account.getToken()};
            m.b(arrstring);
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    public final int e() {
        Account account = am.e();
        if (account == null) {
            return 0;
        }
        if (this.b != 0) return this.b;
        if (this.c == 0) return this.b;
        if (AccountInfo.getPreUnimpCount(account.getToken()) >= this.c) return 0;
        return -1;
    }
}
