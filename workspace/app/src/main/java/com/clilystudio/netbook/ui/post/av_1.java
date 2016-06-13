package com.clilystudio.netbook.ui.post;

import android.app.Activity;

import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.BookHelpList;
import com.clilystudio.netbook.model.BookHelpSummary;
import com.clilystudio.netbook.util.e;

import java.util.Arrays;
import java.util.List;

final class av
        extends com.clilystudio.netbook.a.e<String, Void, BookHelpList> {
    private /* synthetic */ BookHelpListActivity a;

    private av(BookHelpListActivity bookHelpListActivity) {
        this.a = bookHelpListActivity;
    }

    /* synthetic */ av(BookHelpListActivity bookHelpListActivity, byte by) {
        this(bookHelpListActivity);
    }

    private /* varargs */ BookHelpList a(String... arrstring) {
        try {
            BookHelpList bookHelpList = b.b().a(arrstring[0], arrstring[1], 0, 20, BookHelpListActivity.n(this.a));
            return bookHelpList;
        } catch (Exception var2_3) {
            var2_3.printStackTrace();
            return null;
        }
    }

    @Override
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return this.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        BookHelpList bookHelpList = (BookHelpList) object;
        super.onPostExecute(bookHelpList);
        BookHelpListActivity.d(this.a).setVisibility(8);
        BookHelpListActivity.o(this.a).setVisibility(8);
        BookHelpListActivity.p(this.a).setVisibility(8);
        BookHelpListActivity.l(this.a).n();
        if (bookHelpList != null && bookHelpList.getHelps() != null) {
            BookHelpListActivity.j(this.a).clear();
            BookHelpSummary[] arrbookHelpSummary = bookHelpList.getHelps();
            int n = arrbookHelpSummary.length;
            if (n > 0) {
                List<BookHelpSummary> list = Arrays.asList(arrbookHelpSummary);
                BookHelpListActivity.j(this.a).addAll(list);
                BookHelpListActivity.q(this.a).a(BookHelpListActivity.j(this.a));
                if (n < 20) {
                    BookHelpListActivity.l(this.a).setOnLastItemVisibleListener(null);
                    return;
                }
                BookHelpListActivity.l(this.a).setOnLastItemVisibleListener(BookHelpListActivity.r(this.a));
                return;
            }
            BookHelpListActivity.s(this.a);
            return;
        }
        e.a((Activity) this.a, "\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
    }
}
