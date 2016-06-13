package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.MysteryDefaultBook;
import com.clilystudio.netbook.model.TocSummary;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.List;

public final class a
        extends com.clilystudio.netbook.a.e<String, Void, MysteryDefaultBook> {
    private ProgressDialog a;
    private Activity b;
    private boolean c;

    public a(ProgressDialog progressDialog, Activity activity, boolean bl) {
        this.a = progressDialog;
        this.b = activity;
        this.c = bl;
    }

    private static /* varargs */ MysteryDefaultBook a(String... arrstring) {
        String string = arrstring[0];
        try {
            b.a();
            BookInfo bookInfo = b.b().r(string);
            b.a();
            List<TocSummary> list = b.b().d(string);
            if (list.size() > 0) {
                MysteryDefaultBook mysteryDefaultBook = new MysteryDefaultBook();
                mysteryDefaultBook.set_id(string);
                mysteryDefaultBook.setTitle(bookInfo.getTitle());
                mysteryDefaultBook.setLastChapter(bookInfo.getLastChapter());
                mysteryDefaultBook.setAuthor(bookInfo.getAuthor());
                mysteryDefaultBook.setCover(bookInfo.getCover());
                mysteryDefaultBook.setUpdated(bookInfo.getUpdated());
                mysteryDefaultBook.setDefaultTocId(list.get(0).get_id());
                return mysteryDefaultBook;
            }
        } catch (IOException var2_5) {
            var2_5.printStackTrace();
        }
        return null;
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return a.a((String[]) arrobject);
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        MysteryDefaultBook mysteryDefaultBook = (MysteryDefaultBook) object;
        if (this.a == null || !this.a.isShowing()) return;
        this.a.dismiss();
        if (mysteryDefaultBook != null) {
            String string = mysteryDefaultBook.get_id();
            String string2 = mysteryDefaultBook.getTitle();
            String string3 = mysteryDefaultBook.getDefaultTocId();
            if (string3 == null) {
                string3 = "";
            }
            BookInfo bookInfo = new BookInfo();
            bookInfo.setId(mysteryDefaultBook.get_id());
            bookInfo.setTitle(mysteryDefaultBook.getTitle());
            bookInfo.setLastChapter(mysteryDefaultBook.getLastChapter());
            bookInfo.setUpdated(mysteryDefaultBook.getUpdated());
            bookInfo.setCover(mysteryDefaultBook.getCover());
            bookInfo.setAuthor(mysteryDefaultBook.getAuthor());
            MyApplication.a().a(bookInfo);
            Intent intent = ReaderRandomActivity.a(this.b, string, string2, string3);
            this.b.startActivity(intent);
            if (!this.c) return;
            this.b.finish();
            return;
        }
        e.a(this.b, "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e");
    }
}
