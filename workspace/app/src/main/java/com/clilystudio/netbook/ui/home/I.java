package com.clilystudio.netbook.ui.home;

import android.app.Activity;

import com.clilystudio.netbook.a_pack.c;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.BookGenderRecommend;

import java.io.IOException;

final class I extends c<String, BookGenderRecommend> {
    private /* synthetic */ HomeShelfFragment a;

    public I(HomeShelfFragment homeShelfFragment, Activity activity) {
        this.a = homeShelfFragment;
        super(activity, activity.getString(2131034464));
    }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
    private static /* varargs */ BookGenderRecommend a(String... arrstring) {
        BookGenderRecommend$RecommendBook[] arrbookGenderRecommend$RecommendBook;
        int n;
        BookGenderRecommend bookGenderRecommend;
        int n2 = 0;
        try {
            b.a();
            bookGenderRecommend = b.b().ac(arrstring[0]);
            if (!bookGenderRecommend.isOk()) return bookGenderRecommend;
            arrbookGenderRecommend$RecommendBook = bookGenderRecommend.getBooks();
            n = arrbookGenderRecommend$RecommendBook.length;
        } catch (IOException var2_6) {
            var2_6.printStackTrace();
            return null;
        }
        while (n2 < n) {
            BookGenderRecommend$RecommendBook bookGenderRecommend$RecommendBook = arrbookGenderRecommend$RecommendBook[n2];
            BookReadRecord.create(bookGenderRecommend$RecommendBook);
            a.u(bookGenderRecommend$RecommendBook.get_id());
            ++n2;
            continue;
        }
        return bookGenderRecommend;
    }

    @Override
    public final /* synthetic */ void a(Object object) {
        BookGenderRecommend bookGenderRecommend = (BookGenderRecommend) object;
        if (bookGenderRecommend != null && bookGenderRecommend.isOk()) {
            HomeShelfFragment.l(this.a);
            return;
        }
        HomeShelfFragment.b(this.a, 3);
    }
}
