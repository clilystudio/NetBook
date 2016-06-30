package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.reader.cM;
import com.clilystudio.netbook.reader.cQ;
import com.xiaomi.mistatistic.sdk.MiStatInterfaceImpl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class RelateBookListActivity extends BookListActivity implements cQ {
    private int c;

    public static Intent a(Context context, RelateBookRoot relateBookRoot, String string, String string2) {
        return new d().a(context, RelateBookListActivity.class).a("RelateBookRoot", (Serializable) null).a("book_list_title", string).a("bookId", string2).a("entrancePosition", 2).a();
    }

    public static Intent a(Context context, RelateBookRoot relateBookRoot, String string, boolean bl) {
        return new d().a(context, RelateBookListActivity.class).a("RelateBookRoot", relateBookRoot).a("book_list_title", string).a("entrancePosition", 1).a("IS_BFD_RECOMMEND", bl).a();
    }

    private void a(RelateBookRoot relateBookRoot) {
        this.e(1);
        List<BookSummary> list = relateBookRoot.getBooks();
        ArrayList<BookRankDetail> arrayList = new ArrayList<>();
        for (BookSummary bookSummary : list) {
            BookRankDetail bookRankDetail = new BookRankDetail();
            bookRankDetail.set_id(bookSummary.getId());
            bookRankDetail.setAuthor(bookSummary.getAuthor());
            bookRankDetail.setCover(bookSummary.getCover());
            bookRankDetail.setLatelyFollower(bookSummary.getLatelyFollower());
            bookRankDetail.setRetentionRatio(String.valueOf(bookSummary.getRetentionRatio()));
            bookRankDetail.setShortIntro(bookSummary.getShortIntro());
            bookRankDetail.setTitle(bookSummary.getTitle());
            bookRankDetail.setCat(bookSummary.getCat());
            arrayList.add(bookRankDetail);
        }
        this.a.a(arrayList);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final void a(int n) {
        int n2 = 1;
        if (n < 0) return;
        if (n < this.a.getCount()) {
            BookRankDetail bookRankDetail = this.a.getItem(n);
            if (this.c == n2) {
                MiStatInterfaceImpl.recordCountEvent("book_info_recommend_click", "zhuishu");
            } else {
                MiStatInterfaceImpl.recordCountEvent("page_footing_recommend_click", "zhuishu");
                n2 = 2;
            }
            this.startActivity(BookInfoActivity.a(this, bookRankDetail.get_id(), n2));
        }
    }

    @Override
    public final void a(RelateBookRoot relateBookRoot, String[] arrstring) {
        if (relateBookRoot != null && relateBookRoot.isOk()) {
            List<BookSummary> list = relateBookRoot.getBooks();
            if (list != null && !list.isEmpty()) {
                ArrayList<BookSummary> arrayList = new ArrayList<>(20);
                for (String string : arrstring) {
                    for (BookSummary bookSummary : list) {
                        if (!bookSummary.getId().equals(string)) continue;
                        arrayList.add(bookSummary);
                    }
                }
                relateBookRoot.setBooks(arrayList);
                this.a(relateBookRoot);
                return;
            }
            this.e(3);
            return;
        }
        this.e(2);
    }

    @Override
    protected final void b() {
        this.c = this.getIntent().getIntExtra("entrancePosition", 1);
        RelateBookRoot relateBookRoot = (RelateBookRoot) this.getIntent().getSerializableExtra("RelateBookRoot");
        if (relateBookRoot != null) {
            this.a(relateBookRoot);
            return;
        }
        String string = this.getIntent().getStringExtra("bookId");
        if (string != null) {
            this.e(0);
            new cM(this, this).a(string);
            return;
        }
        this.e(2);
    }
}
