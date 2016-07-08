package com.clilystudio.netbook.util;

import android.content.Context;

import com.clilystudio.netbook.am;

import com.clilystudio.netbook.db.AccountInfo;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.event.NotifEvent;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.NotifCountRoot;
import com.clilystudio.netbook.model.Root;

import java.util.Date;

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
            com.clilystudio.netbook.a_pack.e<String, Void, NotifCountRoot> k = new com.clilystudio.netbook.a_pack.e<String, Void, NotifCountRoot>(){

                @Override
                protected NotifCountRoot doInBackground(String... params) {
                    com.clilystudio.netbook.api.b.a();
                    return com.clilystudio.netbook.api.b.b().G(params[0]);
                }

                @Override
                protected void onPostExecute(NotifCountRoot notifCountRoot) {
                    super.onPostExecute(notifCountRoot);
                    if (notifCountRoot != null && notifCountRoot.isOk()) {
                        J.a(J.this, notifCountRoot.getImportant());
                        J.b(J.this, notifCountRoot.getUnimportant());
                        Date date = notifCountRoot.getLastReadImportantTime();
                        Date date2 = notifCountRoot.getLastReadUnimportantTime();
                        if (am.h(J.a(J.this)).equals("0")) {
                            am.a(J.a(J.this), date.getTime());
                        }
                        if (am.i(J.a(J.this)).equals("0")) {
                            am.b(J.a(J.this), date2.getTime());
                        }
                        i.a().post(new NotifEvent());
                     }
                }
            };
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
            com.clilystudio.netbook.a_pack.e<String, Void, Root> l = new com.clilystudio.netbook.a_pack.e<String, Void, Root>(){

                @Override
                protected Root doInBackground(String... params) {
                    com.clilystudio.netbook.api.b.a();
                    return com.clilystudio.netbook.api.b.b().L(params[0]);
                }

                @Override
                protected void onPostExecute(Root root) {
                    super.onPostExecute(root);
                    if (root != null && root.isOk()) {
                        J.this.a(0);
                        i.a().post(new NotifEvent());
                        am.j(J.a(J.this));
                    }
                }
            };
            String[] arrstring = new String[]{account.getToken()};
            l.b(arrstring);
        }
    }

    public final void d() {
        Account account = am.e();
        if (account != null) {
            com.clilystudio.netbook.a_pack.e<String, Void, Root> m = new com.clilystudio.netbook.a_pack.e<String, Void, Root>(){

                @Override
                protected Root doInBackground(String... params) {
                    com.clilystudio.netbook.api.b.a();
                    return com.clilystudio.netbook.api.b.b().M(params[0]);
                }

                @Override
                protected void onPostExecute(Root root) {
                    super.onPostExecute(root);
                    if (root != null && root.isOk()) {
                        AccountInfo accountInfo;
                        J.this.b(0);
                        am.b(J.a(J.this), System.currentTimeMillis());
                        Account account = am.e();
                        if (account != null && (accountInfo = AccountInfo.getByToken(account.getToken())) != null) {
                            accountInfo.setPrevUnimpNotif(0);
                            accountInfo.save();
                        }
                        i.a().post(new NotifEvent());
                    }
                }
            };
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
