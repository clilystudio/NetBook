package com.clilystudio.netbook.util;

import android.app.Activity;
import android.os.Handler;

import com.activeandroid.query.Delete;
import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.BaseAsyncTask;
import com.clilystudio.netbook.a_pack.BaseLoadingTask;
import com.clilystudio.netbook.am;
import com.clilystudio.netbook.api.ApiServiceProvider;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.BookSyncRecord;
import com.clilystudio.netbook.db.SyncAccount;
import com.clilystudio.netbook.event.ShelfUpdatedEvent;
import com.clilystudio.netbook.event.BookAddedEvent;
import com.clilystudio.netbook.event.BusProvider;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.BookShelfSyncTime;
import com.clilystudio.netbook.model.RemoteBookShelf;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public final class Z {
    private static boolean d;
    private Activity b;
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
        Account account2 = am.getAccount();
        if (account2 != null) {
            String string = account2.getUser().getId();
            new Delete().from(BookReadRecord.class).where("account is not null AND account <> ?", string).execute();
            new Delete().from(BookReadRecord.class).where("account is null AND deleted = 1").execute();
        }
        if ((account = am.getAccount()) != null) {
            String string = account.getUser().getId();
            List<BookSyncRecord> list3 = BookSyncRecord.find(string, BookSyncRecord.getTypeId(BookSyncRecord.BookModifyType.SHELF_REMOVE));
            list2 = BookSyncRecord.find(string, BookSyncRecord.getTypeId(BookSyncRecord.BookModifyType.FEED_REMOVE));
            list = list3;
        } else {
            list = null;
            list2 = null;
        }
        remoteBookShelf.getSyncDate().getTime();
        ArrayList<String> arrayList = new ArrayList<>();
        RemoteBookShelf.Book[] arrremoteBookShelf$Book = remoteBookShelf.getBookShelfs();
        RemoteBookShelf.Book[] arrremoteBookShelf$Book2 = remoteBookShelf.getFeedingBooks();
        for (BookReadRecord bookReadRecord : BookReadRecord.getAllNoFeed()) {
            if (!Z.a(bookReadRecord.getBookId(), arrremoteBookShelf$Book)) continue;
            BookReadRecord.trulyDelete(bookReadRecord.getBookId());
        }
        for (BookReadRecord bookReadRecord2 : BookReadRecord.getAllFeeding()) {
            if (!Z.a(bookReadRecord2.getBookId(), arrremoteBookShelf$Book2)) continue;
            BookReadRecord.trulyDelete(bookReadRecord2.getBookId());
        }
        for (RemoteBookShelf.Book book : arrremoteBookShelf$Book) {
            arrayList.add(book.getId());
            if (BookReadRecord.getOnShelf(book.getId()) != null || list != null && list.contains(book.getId())) continue;
            BookReadRecord.create(book, true);
            BusProvider.getInstance().post(new BookAddedEvent(book.getId(), false));
        }
        int n = arrremoteBookShelf$Book2.length;
        int n2 = 0;
        do {
            if (n2 >= n) {
                Z.b();
                com.clilystudio.netbook.hpay100.a.a.a(z.b);
                return;
            }
            RemoteBookShelf.Book remoteBookShelf$Book2 = arrremoteBookShelf$Book2[n2];
            if (!(BookReadRecord.getOnShelf(remoteBookShelf$Book2.getId()) != null || list2 != null && list2.contains(remoteBookShelf$Book2.getId()))) {
                BookReadRecord.createFeed(remoteBookShelf$Book2);
                BusProvider.getInstance().post(new BookAddedEvent(remoteBookShelf$Book2.getId(), false));
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
    private static boolean a(String string, RemoteBookShelf.Book[] arrremoteBookShelf$Book) {
        BookSyncRecord bookSyncRecord = BookSyncRecord.get(string);
        if (bookSyncRecord != null && bookSyncRecord.getType() != BookSyncRecord.getTypeId(BookSyncRecord.BookModifyType.SYNC_SUCCESS)) return false;
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
        Account account = am.getAccount();
        if (account != null) {
            String string = account.getUser().getId();
            if (arrstring.length > 0) {
                new X(string, account.getToken(), BookSyncRecord.BookModifyType.SHELF_ADD, arrstring).b();
            }
            if (arrstring2.length > 0) {
                new X(string, account.getToken(), BookSyncRecord.BookModifyType.FEED_ADD, arrstring2).b();
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
            bookShelfSyncTime = ApiServiceProvider.getApiService().A(string);
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
            remoteBookShelf = ApiServiceProvider.getApiService().B(string);
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
            new Handler().postDelayed(new Runnable() {
                @Override
                public void run() {
                    if (!Z.a()) {
                        BaseAsyncTask<String, Void, RemoteBookShelf> ab2 = new BaseAsyncTask<String, Void, RemoteBookShelf>(){
                            @Override
                            protected RemoteBookShelf doInBackground(String... params) {
                                 Z.b(true);
                                return Z.a(Z.this, params[0]);
                            }

                            @Override
                            protected void onPostExecute(RemoteBookShelf remoteBookShelf) {
                                super.onPostExecute(remoteBookShelf);
                                Z.b(false);
                                if (remoteBookShelf != null && remoteBookShelf.isNeedSync() && remoteBookShelf.isOk()) {
                                    Z.a(Z.this, remoteBookShelf);
                                    BusProvider.getInstance().post(new ShelfUpdatedEvent(remoteBookShelf.getTotalBookCounts()));
                                }
                            }
                        };
                        String[] arrstring = new String[]{Z.a(Z.this)};
                        ab2.b(arrstring);
                    }
                }
            }, 4000);
            return;
        }
        BaseLoadingTask<String, RemoteBookShelf> ac2 = new BaseLoadingTask<String, RemoteBookShelf>(Z.this.b, R.string.loading){

            @Override
            public RemoteBookShelf a(String... var1) {
                RemoteBookShelf remoteBookShelf = Z.a(Z.this, var1[0]);
                if (remoteBookShelf != null) {
                    if (remoteBookShelf.isNeedSync()) {
                        if (remoteBookShelf.isOk()) {
                            Z.a(Z.this, remoteBookShelf);
                            com.clilystudio.netbook.util.e.a(Z.b(Z.this), "同步完成");
                            return remoteBookShelf;
                        }
                        if ("TOKEN_INVALID".equals(remoteBookShelf.getCode())) {
                            com.clilystudio.netbook.util.e.a(Z.b(Z.this), R.string.sync_token_failed);
                            return remoteBookShelf;
                        }
                        com.clilystudio.netbook.util.e.a(Z.b(Z.this), "同步失败，请重试");
                        return remoteBookShelf;
                    }
                    com.clilystudio.netbook.util.e.a(Z.b(Z.this), "同步完成");
                    return remoteBookShelf;
                }
                com.clilystudio.netbook.util.e.a(Z.b(Z.this), "同步失败，请检查网络或稍后再试");
                return remoteBookShelf;
            }

            @Override
            public void a(RemoteBookShelf remoteBookShelf) {
                 if (remoteBookShelf != null) {
                    BusProvider.getInstance().post(new ShelfUpdatedEvent(remoteBookShelf.getTotalBookCounts()));
                    return;
                }
                BusProvider.getInstance().post(new ShelfUpdatedEvent(1));
            }
        };
        String[] arrstring = new String[]{this.c};
        ac2.b(arrstring);
    }
}
