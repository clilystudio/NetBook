package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.Intent;

import com.arcsoft.hpay100.a.a;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.model.BookRankDetail;
import com.clilystudio.app.netbook.model.BookSummary;
import com.clilystudio.app.netbook.model.RelateBookRoot;
import com.clilystudio.app.netbook.reader.cM;
import com.clilystudio.app.netbook.reader.cQ;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RelateBookListActivity extends BookListActivity
        implements cQ {
    private boolean b = false;
    private int c;

    public static Intent a(Context paramContext, RelateBookRoot paramRelateBookRoot, String paramString1, String paramString2) {
        return new d_IntentFactory().a_setClass(paramContext, RelateBookListActivity.class).a_putExtra("RelateBookRoot", null).a_putExtra("book_list_title", paramString1).a_putExtra("bookId", paramString2).a_putExtra("entrancePosition", 2).a();
    }

    public static Intent a(Context paramContext, RelateBookRoot paramRelateBookRoot, String paramString, boolean paramBoolean) {
        return new d_IntentFactory().a_setClass(paramContext, RelateBookListActivity.class).a_putExtra("RelateBookRoot", paramRelateBookRoot).a_putExtra("book_list_title", paramString).a_putExtra("entrancePosition", 1).a_putExtra("IS_BFD_RECOMMEND", Boolean.valueOf(paramBoolean)).a();
    }

    private void a(RelateBookRoot paramRelateBookRoot) {
        e(1);
        List localList = paramRelateBookRoot.getBooks();
        ArrayList localArrayList = new ArrayList();
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext()) {
            BookSummary localBookSummary = (BookSummary) localIterator.next();
            BookRankDetail localBookRankDetail = new BookRankDetail();
            localBookRankDetail.set_id(localBookSummary.getId());
            localBookRankDetail.setAuthor(localBookSummary.getAuthor());
            localBookRankDetail.setCover(localBookSummary.getCover());
            localBookRankDetail.setLatelyFollower(localBookSummary.getLatelyFollower());
            localBookRankDetail.setRetentionRatio(String.valueOf(localBookSummary.getRetentionRatio()));
            localBookRankDetail.setShortIntro(localBookSummary.getShortIntro());
            localBookRankDetail.setTitle(localBookSummary.getTitle());
            localBookRankDetail.setCat(localBookSummary.getCat());
            localArrayList.add(localBookRankDetail);
        }
        this.a.a(localArrayList);
    }

    protected final void a(int paramInt) {
        int i = 1;
        BookRankDetail localBookRankDetail;
        if ((paramInt >= 0) && (paramInt < this.a.getCount())) {
            localBookRankDetail = (BookRankDetail) this.a.getItem(paramInt);
            if (!this.b)
                break label91;
            a.c(this, localBookRankDetail.get_id(), "rec_C6613205_93B6_61A6_9FEC_180B70F91B94");
            if (this.c != i)
                break label78;
            b.a(this, "book_info_recommend_click", "bfd");
            i = 3;
        }
        while (true) {
            startActivity(BookInfoActivity.a(this, localBookRankDetail.get_id(), i));
            return;
            label78:
            b.a(this, "page_footing_recommend_click", "bfd");
            i = 4;
            continue;
            label91:
            if (this.c == i) {
                b.a(this, "book_info_recommend_click", "zhuishu");
            } else {
                b.a(this, "page_footing_recommend_click", "zhuishu");
                i = 2;
            }
        }
    }

    public final void a(RelateBookRoot paramRelateBookRoot, String[] paramArrayOfString) {
        if ((paramRelateBookRoot != null) && (paramRelateBookRoot.isOk())) {
            List localList = paramRelateBookRoot.getBooks();
            if ((localList != null) && (!localList.isEmpty())) {
                ArrayList localArrayList = new ArrayList(20);
                int i = paramArrayOfString.length;
                for (int j = 0; j < i; j++) {
                    String str = paramArrayOfString[j];
                    Iterator localIterator = localList.iterator();
                    while (localIterator.hasNext()) {
                        BookSummary localBookSummary = (BookSummary) localIterator.next();
                        if (localBookSummary.getId().equals(str))
                            localArrayList.add(localBookSummary);
                    }
                }
                paramRelateBookRoot.setBooks(localArrayList);
                a(paramRelateBookRoot);
                return;
            }
            e(3);
            return;
        }
        e(2);
    }

    protected final void b() {
        this.c = getIntent().getIntExtra("entrancePosition", 1);
        RelateBookRoot localRelateBookRoot = (RelateBookRoot) getIntent().getSerializableExtra("RelateBookRoot");
        if (localRelateBookRoot != null) {
            a(localRelateBookRoot);
            this.b = getIntent().getBooleanExtra("IS_BFD_RECOMMEND", false);
            return;
        }
        String str = getIntent().getStringExtra("bookId");
        if (str != null) {
            e(0);
            this.b = new cM(this, this).a(str);
            return;
        }
        e(2);
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.RelateBookListActivity
 * JD-Core Version:    0.6.2
 */