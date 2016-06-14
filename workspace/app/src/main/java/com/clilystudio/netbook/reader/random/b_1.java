package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.MysteryBook;
import com.clilystudio.netbook.model.MysteryBookList;
import com.clilystudio.netbook.model.MysteryBookList$MysteryBookRoot;
import com.clilystudio.netbook.model.MysteryToc;
import com.clilystudio.netbook.util.e;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

public final class b
        extends c<String, MysteryBookList> {
    private final boolean a = true;

    public b(Activity activity, int n, boolean bl) {
        super(activity, 2131034218);
    }

    private static /* varargs */ MysteryBookList a() {
        try {
            com.clilystudio.netbook.api.b.a();
            MysteryBookList mysteryBookList = com.clilystudio.netbook.api.b.b().h();
            return mysteryBookList;
        } catch (IOException var0_1) {
            var0_1.printStackTrace();
            return null;
        }
    }

    /*
     * Enabled aggressive block sorting
     * Lifted jumps to return sites
     */
    @Override
    public final /* synthetic */ void a(Object object) {
        MysteryBookList mysteryBookList = (MysteryBookList) object;
        if (this.b() == null) return;
        if (mysteryBookList != null && mysteryBookList.getBooks() != null && mysteryBookList.getBooks().length > 0) {
            int n2;
            List<MysteryBookList$MysteryBookRoot> list = Arrays.asList(mysteryBookList.getBooks());
            int n3 = a.a((Context) this.b(), "randomBooks", -1);
            if (n3 == -1) {
                n3 = (int) (Math.random() * (double) list.size());
            }
            if ((n2 = n3 + 1) < 0 || n2 >= list.size()) {
                n2 = 0;
            }
            a.b((Context) this.b(), "randomBooks", n2);
            MysteryBookList$MysteryBookRoot mysteryBookList$MysteryBookRoot = list.get(n2);
            MysteryBook mysteryBook = mysteryBookList$MysteryBookRoot.getBook();
            String string = mysteryBook.get_id();
            String string2 = mysteryBook.getTitle();
            MysteryToc mysteryToc = mysteryBookList$MysteryBookRoot.getToc();
            String string3 = mysteryToc == null ? "" : mysteryToc.get_id();
            BookInfo bookInfo = new BookInfo();
            bookInfo.setId(mysteryBook.get_id());
            bookInfo.setTitle(mysteryBook.getTitle());
            bookInfo.setLastChapter(mysteryBook.getLastChapter());
            bookInfo.setUpdated(mysteryBook.getUpdated());
            bookInfo.setCover(mysteryBook.getCover());
            MyApplication.a().a(bookInfo);
            Intent intent = ReaderRandomActivity.a(this.b(), string, string2, string3);
            this.b().startActivity(intent);
            if (!this.a) return;
            this.b().finish();
            return;
        }
        e.a(this.b(), "\u6253\u5f00\u5931\u8d25\u6216\u6682\u65f6\u672a\u5f00\u653e");
    }
}
