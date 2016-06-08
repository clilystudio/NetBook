package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.app.ProgressDialog;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.MysteryDefaultBook;
import com.clilystudio.netbook.model.TocSummary;

import java.io.IOException;
import java.util.List;

public final class a extends e<String, Void, MysteryDefaultBook> {
    private ProgressDialog a;
    private Activity b;
    private boolean c;

    public a(ProgressDialog paramProgressDialog, Activity paramActivity, boolean paramBoolean) {
        this.a = paramProgressDialog;
        this.b = paramActivity;
        this.c = paramBoolean;
    }

    private static MysteryDefaultBook a(String[] paramArrayOfString) {
        String str = paramArrayOfString[0];
        try {
            b.a();
            BookInfo localBookInfo = b.b().r(str);
            b.a();
            List localList = b.b().d(str);
            if (localList.size() > 0) {
                MysteryDefaultBook localMysteryDefaultBook = new MysteryDefaultBook();
                localMysteryDefaultBook.set_id(str);
                localMysteryDefaultBook.setTitle(localBookInfo.getTitle());
                localMysteryDefaultBook.setLastChapter(localBookInfo.getLastChapter());
                localMysteryDefaultBook.setAuthor(localBookInfo.getAuthor());
                localMysteryDefaultBook.setCover(localBookInfo.getCover());
                localMysteryDefaultBook.setUpdated(localBookInfo.getUpdated());
                localMysteryDefaultBook.setDefaultTocId(((TocSummary) localList.get(0)).get_id());
                return localMysteryDefaultBook;
            }
        } catch (IOException localIOException) {
            localIOException.printStackTrace();
        }
        return null;
    }
}

