package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;

import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.reader.cM;
import com.clilystudio.netbook.reader.cQ;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class RelateBookListActivity extends BookListActivity implements cQ {

    private int c;
    private boolean b = false;
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, RelateBookRoot RelateBookRoot2, String String3, String String4) {
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static Intent a(Context Context1, RelateBookRoot RelateBookRoot2, String String3, boolean boolean4) {
    }

    private void a(RelateBookRoot RelateBookRoot1) {
        List List2;
        Object Object3;
        Iterator Iterator4;

        e(1);
        List2 = RelateBookRoot1.getBooks();
        Object3 = new ArrayList();
        Iterator4 = List2.iterator();
        while (Iterator4.hasNext()) {
            BookSummary BookSummary5 = (BookSummary) Iterator4.next();
            Object Object6 = new BookRankDetail();

            ((BookRankDetail) Object6).set_id(BookSummary5.getId());
            ((BookRankDetail) Object6).setAuthor(BookSummary5.getAuthor());
            ((BookRankDetail) Object6).setCover(BookSummary5.getCover());
            ((BookRankDetail) Object6).setLatelyFollower(BookSummary5.getLatelyFollower());
            ((BookRankDetail) Object6).setRetentionRatio(String.valueOf(BookSummary5.getRetentionRatio()));
            ((BookRankDetail) Object6).setShortIntro(BookSummary5.getShortIntro());
            ((BookRankDetail) Object6).setTitle(BookSummary5.getTitle());
            ((BookRankDetail) Object6).setCat(BookSummary5.getCat());
            ((List) Object3).add(Object6);
        }
        a.a((Collection) Object3);
    }

    protected final void a(int int1) {
        int int2 = 1;

        if (int1 >= 0 && int1 < a.getCount()) {
            BookRankDetail BookRankDetail3 = (BookRankDetail) a.getItem(int1);

            if (b) {
                com.clilystudio.netbook.hpay100.a.a.c((Context) this, BookRankDetail3.get_id(), "rec_C6613205_93B6_61A6_9FEC_180B70F91B94");
                if (c == int2) {
                    com.umeng.a.b.a((Context) this, "book_info_recommend_click", "bfd");
                    int2 = 3;
                } else {
                    com.umeng.a.b.a((Context) this, "page_footing_recommend_click", "bfd");
                    int2 = 4;
                }
            } else if (c == int2)
                com.umeng.a.b.a((Context) this, "book_info_recommend_click", "zhuishu");
            else {
                com.umeng.a.b.a((Context) this, "page_footing_recommend_click", "zhuishu");
                int2 = 2;
            }
            startActivity(BookInfoActivity.a((Context) this, BookRankDetail3.get_id(), int2));
        }
    }

    public final void a(RelateBookRoot RelateBookRoot1, String[] String_1darray2) {
        if (RelateBookRoot1 != null && RelateBookRoot1.isOk()) {
            List List3 = RelateBookRoot1.getBooks();

            if (List3 != null && !List3.isEmpty()) {
                Object Object4 = new ArrayList(20);
                int int5 = String_1darray2.length;
                int int6;

                for (int6 = 0; int6 < int5; ++int6) {
                    String String7 = String_1darray2[int6];
                    Iterator Iterator8 = List3.iterator();

                    while (Iterator8.hasNext()) {
                        Object Object9 = (BookSummary) Iterator8.next();

                        if (!((BookSummary) Object9).getId().equals(String7))
                            continue;
                        ((List) Object4).add(Object9);
                    }
                }
                RelateBookRoot1.setBooks((List) Object4);
                a(RelateBookRoot1);
            } else
                e(3);
        } else
            e(2);
    }

    protected final void b() {
        RelateBookRoot RelateBookRoot1;

        c = getIntent().getIntExtra("entrancePosition", 1);
        RelateBookRoot1 = (RelateBookRoot) getIntent().getSerializableExtra("RelateBookRoot");
        if (RelateBookRoot1 != null) {
            a(RelateBookRoot1);
            b = getIntent().getBooleanExtra("IS_BFD_RECOMMEND", false);
        } else {
            String String2 = getIntent().getStringExtra("bookId");

            if (String2 != null) {
                e(0);
                b = new cM((Context) this, this).a(String2);
            } else
                e(2);
        }
    }
}
