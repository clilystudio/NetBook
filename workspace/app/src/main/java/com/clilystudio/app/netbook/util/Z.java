package com.clilystudio.app.netbook.util;

import android.app.Activity;
import android.os.Handler;

import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.db.BookSyncRecord;
import com.clilystudio.app.netbook.db.BookSyncRecord.BookModifyType;
import com.clilystudio.app.netbook.db.SyncAccount;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.BookShelfSyncTime;
import com.clilystudio.app.netbook.model.RemoteBookShelf;
import com.clilystudio.app.netbook.model.RemoteBookShelf.Book;

import java.util.Date;
import java.util.List;

public final class Z {
    private static boolean d;
    private b a = b.a();
    private Activity b;
    private String c;

    public Z(Activity paramActivity, String paramString) {
        this.b = paramActivity;
        this.c = paramString;
    }

    private RemoteBookShelf a(String paramString) {
        try {
            BookShelfSyncTime localBookShelfSyncTime2 = b.b().A(paramString);
            localBookShelfSyncTime1 = localBookShelfSyncTime2;
            localObject = null;
            if (localBookShelfSyncTime1 != null) {
                boolean bool = localBookShelfSyncTime1.isOk();
                localObject = null;
                if (bool) ;
            } else {
                return localObject;
            }
        } catch (Exception localException1) {
            while (true) {
                Object localObject;
                localException1.printStackTrace();
                BookShelfSyncTime localBookShelfSyncTime1 = null;
                continue;
                Date localDate = localBookShelfSyncTime1.getBookshelfUpdated();
                if (SyncAccount.needSync(localDate))
                    try {
                        RemoteBookShelf localRemoteBookShelf2 = b.b().B(paramString);
                        localObject = localRemoteBookShelf2;
                        if (localObject != null) {
                            ((RemoteBookShelf) localObject).setSyncDate(localDate);
                            ((RemoteBookShelf) localObject).setNeedSync(true);
                            return localObject;
                        }
                    } catch (Exception localException2) {
                        while (true) {
                            localException2.printStackTrace();
                            localObject = null;
                        }
                    }
            }
            RemoteBookShelf localRemoteBookShelf1 = new RemoteBookShelf();
            localRemoteBookShelf1.setNeedSync(false);
            return localRemoteBookShelf1;
        }
    }

    private static boolean a(String paramString, RemoteBookShelf.Book[] paramArrayOfBook) {
        BookSyncRecord localBookSyncRecord = BookSyncRecord.get(paramString);
        int i;
        if ((localBookSyncRecord == null) || (localBookSyncRecord.getType() == BookSyncRecord.getTypeId(BookSyncRecord.BookModifyType.SYNC_SUCCESS)))
            i = paramArrayOfBook.length;
        for (int j = 0; j < i; j++)
            if (paramArrayOfBook[j].getId().equals(paramString))
                return false;
        return true;
    }

    private static void b() {
        List localList1 = BookReadRecord.getAllNoFeed();
        String[] arrayOfString1 = new String[localList1.size()];
        for (int i = 0; i < localList1.size(); i++)
            arrayOfString1[i] = ((BookReadRecord) localList1.get(i)).getBookId();
        List localList2 = BookReadRecord.getAllFeeding();
        String[] arrayOfString2 = new String[localList2.size()];
        for (int j = 0; j < localList2.size(); j++)
            arrayOfString2[j] = ((BookReadRecord) localList2.get(j)).getBookId();
        Account localAccount = am_CommonUtils.e_getAccount();
        if (localAccount != null) {
            String str = localAccount.getUser().getId();
            if (arrayOfString1.length > 0)
                new X(str, localAccount.getToken(), BookSyncRecord.BookModifyType.SHELF_ADD, arrayOfString1).b(new Void[0]);
            if (arrayOfString2.length > 0)
                new X(str, localAccount.getToken(), BookSyncRecord.BookModifyType.FEED_ADD, arrayOfString2).b(new Void[0]);
        }
    }

    public final void a(boolean paramBoolean) {
        if (this.b == null)
            return;
        if (paramBoolean) {
            new Handler().postDelayed(new aa(this), 4000L);
            return;
        }
        ac localac = new ac(this, this.b);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = this.c;
        localac.b(arrayOfString);
    }
}
