package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.model.BookRankDetail;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.reader.RelateBookManager;

import java.util.ArrayList;
import java.util.List;

public class RelateBookListActivity extends BookListActivity implements RelateBookManager.OnCompletedListener {
    private int mEntrancePosition;

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
            if (this.mEntrancePosition != n2) {
                n2 = 2;
            }
            this.startActivity(BookInfoActivity.a(this, bookRankDetail.get_id(), n2));
        }
    }

    @Override
    public final void onCompleted(RelateBookRoot relateBookRoot) {
        if (relateBookRoot != null && relateBookRoot.isOk()) {
            List<BookSummary> list = relateBookRoot.getBooks();
            if (list != null && !list.isEmpty()) {
                this.a(relateBookRoot);
            } else {
                this.e(3);
            }
        } else {
            this.e(2);
        }
    }

    @Override
    protected final void b() {
        this.mEntrancePosition = this.getIntent().getIntExtra("entrancePosition", 1);
        RelateBookRoot relateBookRoot = (RelateBookRoot) this.getIntent().getSerializableExtra("RelateBookRoot");
        if (relateBookRoot != null) {
            this.a(relateBookRoot);
            return;
        }
        String bookId = this.getIntent().getStringExtra("bookId");
        if (bookId != null) {
            this.e(0);
            new RelateBookManager(this).getRelateBook(bookId);
        } else {
            this.e(2);
        }
    }
}
