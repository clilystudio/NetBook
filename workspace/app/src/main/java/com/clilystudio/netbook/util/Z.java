package com.clilystudio.netbook.util;

import android.app.Activity;
import android.os.Handler;
import android.support.design.widget.am;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.BookSyncRecord$BookModifyType;
import com.clilystudio.netbook.db.SyncAccount;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookShelfSyncTime;
import com.clilystudio.netbook.model.RemoteBookShelf;
import com.clilystudio.netbook.model.RemoteBookShelf$Book;

import java.util.Date;
import java.util.List;

public final class Z {

    private static boolean d;
    private Activity b;
    private String c;
    private com.clilystudio.netbook.api.b a = com.clilystudio.netbook.api.b.a();
    public Z(Activity Activity1, String String2) {
        b = Activity1;
        c = String2;
    }

    static RemoteBookShelf a(Z Z1, String String2) {
        return Z1.a(String2);
    }

    static String a(Z Z1) {
        return Z1.c;
    }

    static void a(Z Z1, RemoteBookShelf RemoteBookShelf2) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    static boolean a() {
        return d;
    }

    private static boolean a(String String1, RemoteBookShelf$Book[] Book_1darray2) {
        BookSyncRecord BookSyncRecord3 = BookSyncRecord.get(String1);

        if (BookSyncRecord3 == null || BookSyncRecord3.getType() == BookSyncRecord.getTypeId(BookSyncRecord$BookModifyType.SYNC_SUCCESS)) {
            int int4 = Book_1darray2.length;
            int int5;

            for (int5 = 0; int5 < int4; ++int5) {
                if (Book_1darray2[int5].getId().equals(String1))
                    return false;
            }
            return true;
        }
        return false;
    }

    static Activity b(Z Z1) {
        return Z1.b;
    }

    private static void b() {
        List List1 = BookReadRecord.getAllNoFeed();
        String[] String_1darray2 = new String[List1.size()];
        int int3;
        List List4;
        String[] String_1darray5;
        int int6;
        Account Account7;

        for (int3 = 0; int3 < List1.size(); ++int3)
            String_1darray2[int3] = ((BookReadRecord) List1.get(int3)).getBookId();
        List4 = BookReadRecord.getAllFeeding();
        String_1darray5 = new String[List4.size()];
        for (int6 = 0; int6 < List4.size(); ++int6)
            String_1darray5[int6] = ((BookReadRecord) List4.get(int6)).getBookId();
        Account7 = am.e();
        if (Account7 != null) {
            String String8 = Account7.getUser().getId();

            if (String_1darray2.length > 0)
                new X(String8, Account7.getToken(), BookSyncRecord$BookModifyType.SHELF_ADD, String_1darray2).b(new Void[0]);
            if (String_1darray5.length > 0)
                new X(String8, Account7.getToken(), BookSyncRecord$BookModifyType.FEED_ADD, String_1darray5).b(new Void[0]);
        }
    }

    static boolean b(boolean boolean1) {
        d = boolean1;
        return boolean1;
    }

    private RemoteBookShelf a(String String1) {
        BookShelfSyncTime BookShelfSyncTime3;
        RemoteBookShelf RemoteBookShelf4;

        try {
            BookShelfSyncTime BookShelfSyncTime10 = com.clilystudio.netbook.api.b.b().A(String1);
        } catch (Exception Exception2) {
            Exception2.printStackTrace();
            BookShelfSyncTime3 = null;
        }
        RemoteBookShelf4 = null;
        if (BookShelfSyncTime3 != null) {
            boolean boolean5 = BookShelfSyncTime3.isOk();

            RemoteBookShelf4 = null;
            if (boolean5) {
                Date Date6 = BookShelfSyncTime3.getBookshelfUpdated();

                if (SyncAccount.needSync(Date6)) {
                    try {
                        RemoteBookShelf RemoteBookShelf9 = com.clilystudio.netbook.api.b.b().B(String1);
                    } catch (Exception Exception8) {
                        Exception8.printStackTrace();
                        RemoteBookShelf4 = null;
                    }
                    if (RemoteBookShelf4 != null) {
                        RemoteBookShelf4.setSyncDate(Date6);
                        RemoteBookShelf4.setNeedSync(true);
                        return RemoteBookShelf4;
                    }
                } else {
                    RemoteBookShelf RemoteBookShelf7 = new RemoteBookShelf();

                    RemoteBookShelf7.setNeedSync(false);
                    return RemoteBookShelf7;
                }
            }
        }
        return RemoteBookShelf4;
    }

    public final void a(boolean boolean1) {
        if (b != null) {
            if (boolean1)
                new Handler().postDelayed((Runnable) new aa(this), 4000L);
            else {
                ac ac2 = new ac(this, b);
                String[] String_1darray3 = new String[1];

                String_1darray3[0] = c;
                ac2.b(String_1darray3);
            }
        }
    }
}
