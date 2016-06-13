package com.clilystudio.netbook.util;

import android.app.Activity;
import android.os.Handler;
import android.support.design.widget.am;

import com.activeandroid.query.Delete;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.BookSyncRecord$BookModifyType;
import com.clilystudio.netbook.db.SyncAccount;
import com.clilystudio.netbook.event.c;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookShelfSyncTime;
import com.clilystudio.netbook.model.RemoteBookShelf;
import com.clilystudio.netbook.model.RemoteBookShelf$Book;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class Z {
    private static boolean d;
    private Activity b;
    private b a = b.a();
    private String c;

    public Z(Activity activity, String string) {
        this.b = activity;
        this.c = string;
    }

    static /* synthetic */ RemoteBookShelf a(Z z, String string) {
        return z.a(string);
    }

    static /* synthetic */ String a(Z z) {
        return z.c;
    }

    /*
     * Enabled aggressive block sorting
     */
    static /* synthetic */ void a(Z z, RemoteBookShelf remoteBookShelf) {
        List<BookSyncRecord> list;
        Account account;
        List<BookSyncRecord> list2;
        Account account2 = am.e();
        if (account2 != null) {
            String string = account2.getUser().getId();
            new Delete().from(BookReadRecord.class).where("account is not null AND account <> ?", string).execute();
            new Delete().from(BookReadRecord.class).where("account is null AND deleted = 1").execute();
        }
        if ((account = am.e()) != null) {
            String string = account.getUser().getId();
            List<BookSyncRecord> list3 = BookSyncRecord.find(string, BookSyncRecord.getTypeId(BookSyncRecord$BookModifyType.SHELF_REMOVE));
            list2 = BookSyncRecord.find(string, BookSyncRecord.getTypeId(BookSyncRecord$BookModifyType.FEED_REMOVE));
            list = list3;
        } else {
            list = null;
            list2 = null;
        }
        remoteBookShelf.getSyncDate().getTime();
        ArrayList<String> arrayList = new ArrayList<String>();
        RemoteBookShelf$Book[] arrremoteBookShelf$Book = remoteBookShelf.getBookShelfs();
        RemoteBookShelf$Book[] arrremoteBookShelf$Book2 = remoteBookShelf.getFeedingBooks();
        for (BookReadRecord bookReadRecord : BookReadRecord.getAllNoFeed()) {
            if (!Z.a(bookReadRecord.getBookId(), arrremoteBookShelf$Book)) continue;
            BookReadRecord.trulyDelete(bookReadRecord.getBookId());
        }
        for (BookReadRecord bookReadRecord2 : BookReadRecord.getAllFeeding()) {
            if (!Z.a(bookReadRecord2.getBookId(), arrremoteBookShelf$Book2)) continue;
            BookReadRecord.trulyDelete(bookReadRecord2.getBookId());
        }
        for (RemoteBookShelf$Book remoteBookShelf$Book : arrremoteBookShelf$Book) {
            arrayList.add(remoteBookShelf$Book.getId());
            if (BookReadRecord.getOnShelf(remoteBookShelf$Book.getId()) != null || list != null && list.contains(remoteBookShelf$Book.getId())) continue;
            BookReadRecord.create(remoteBookShelf$Book, true);
            i.a().c(new c(remoteBookShelf$Book.getId(), false));
        }
        int n = arrremoteBookShelf$Book2.length;
        int n2 = 0;
        do {
            if (n2 >= n) {
                Z.b();
                a.a(z.b);
                return;
            }
            RemoteBookShelf$Book remoteBookShelf$Book2 = arrremoteBookShelf$Book2[n2];
            if (!(BookReadRecord.getOnShelf(remoteBookShelf$Book2.getId()) != null || list2 != null && list2.contains(remoteBookShelf$Book2.getId()))) {
                BookReadRecord.createFeed(remoteBookShelf$Book2);
                i.a().c(new c(remoteBookShelf$Book2.getId(), false));
            }
            ++n2;
        } while (true);
    }

    static /* synthetic */ boolean a() {
        return d;
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static boolean a(String string, RemoteBookShelf$Book[] arrremoteBookShelf$Book) {
        BookSyncRecord bookSyncRecord = BookSyncRecord.get(string);
        if (bookSyncRecord != null && bookSyncRecord.getType() != BookSyncRecord.getTypeId(BookSyncRecord$BookModifyType.SYNC_SUCCESS)) return false;
        int n = arrremoteBookShelf$Book.length;
        int n2 = 0;
        while (n2 < n) {
            if (arrremoteBookShelf$Book[n2].getId().equals(string)) {
                return false;
            }
            ++n2;
        }
        return true;
    }

    static /* synthetic */ Activity b(Z z) {
        return z.b;
    }

    private static void b() {
        List<BookReadRecord> list = BookReadRecord.getAllNoFeed();
        String[] arrstring = new String[list.size()];
        for (int j = 0; j < list.size(); ++j) {
            arrstring[j] = list.get(j).getBookId();
        }
        List<BookReadRecord> list2 = BookReadRecord.getAllFeeding();
        String[] arrstring2 = new String[list2.size()];
        for (int k = 0; k < list2.size(); ++k) {
            arrstring2[k] = list2.get(k).getBookId();
        }
        Account account = am.e();
        if (account != null) {
            String string = account.getUser().getId();
            if (arrstring.length > 0) {
                new X(string, account.getToken(), BookSyncRecord$BookModifyType.SHELF_ADD, arrstring).b(new Void[0]);
            }
            if (arrstring2.length > 0) {
                new X(string, account.getToken(), BookSyncRecord$BookModifyType.FEED_ADD, arrstring2).b(new Void[0]);
            }
        }
    }

    static /* synthetic */ boolean b(boolean bl) {
        d = bl;
        return bl;
    }

    /*
     * Enabled aggressive block sorting
     * Enabled unnecessary exception pruning
     * Enabled aggressive exception aggregation
     */
    private RemoteBookShelf a(String string) {
        BookShelfSyncTime bookShelfSyncTime;
        try {
            BookShelfSyncTime bookShelfSyncTime2;
            bookShelfSyncTime = bookShelfSyncTime2 = b.b().A(string);
        } catch (Exception var2_6) {
            var2_6.printStackTrace();
            return null;
        }
        RemoteBookShelf remoteBookShelf = null;
        if (bookShelfSyncTime == null) return remoteBookShelf;
        boolean bl = bookShelfSyncTime.isOk();
        remoteBookShelf = null;
        if (!bl) return remoteBookShelf;
        Date date = bookShelfSyncTime.getBookshelfUpdated();
        if (!SyncAccount.needSync(date)) {
            RemoteBookShelf remoteBookShelf2 = new RemoteBookShelf();
            remoteBookShelf2.setNeedSync(false);
            return remoteBookShelf2;
        }
        try {
            RemoteBookShelf remoteBookShelf3;
            remoteBookShelf = remoteBookShelf3 = b.b().B(string);
        } catch (Exception var8_9) {
            var8_9.printStackTrace();
            return null;
        }
        if (remoteBookShelf == null) {
            return remoteBookShelf;
        }
        remoteBookShelf.setSyncDate(date);
        remoteBookShelf.setNeedSync(true);
        return remoteBookShelf;
    }

    public final void a(boolean bl) {
        if (this.b == null) {
            return;
        }
        if (bl) {
            new Handler().postDelayed(new aa(this), 4000);
            return;
        }
        ac ac2 = new ac(this, this.b);
        String[] arrstring = new String[]{this.c};
        ac2.b(arrstring);
    }
}
