package com.clilystudio.netbook.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

final class Q extends W<BookSummary> {
    final /* synthetic */ UGCGuideEditBooksActivity a;

    public Q(UGCGuideEditBooksActivity uGCGuideEditBooksActivity, LayoutInflater layoutInflater, int n) {
        this.a = uGCGuideEditBooksActivity;
        super(layoutInflater, R.layout.list_item_ucg_book_guide_edit);
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookSummary bookSummary = (BookSummary) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookSummary.getFullCover(), R.drawable.cover_default);
        this.a(1, bookSummary.getTitle());
        this.a(2, bookSummary.getAuthor());
        this.a(3, "" + bookSummary.getLatelyFollower());
        long l = bookSummary.getWordCount();
        if (l > 0) {
            String string = " \u5b57";
            if (l > 10000) {
                l /= 10000;
                string = " \u4e07\u5b57";
            } else if (l > 100) {
                l /= 100;
                string = " \u767e\u5b57";
            }
            this.a(4, "" + l);
            this.a(5, string);
            this.a(4, false);
            this.a(5, false);
            this.a(9, false);
        } else {
            this.a(4, true);
            this.a(5, true);
            this.a(9, true);
        }
        if (bookSummary.getAppendComment() != null && bookSummary.getAppendComment().trim().length() > 0) {
            this.a(6, bookSummary.getAppendComment());
            this.a(7, true);
            this.a(8, false);
            return;
        }
        this.a(7, false);
        this.a(8, true);
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.avatar, R.id.title, R.id.author, R.id.followcount, R.id.wordcount, R.id.wordunit, R.id.comment, R.id.comment_add_layout, R.id.comment_edit_layout, R.id.separate};
    }

    @Override
    public final View getView(final int n, View view, ViewGroup viewGroup) {
        View view2 = super.getView(n, view, viewGroup);
        view2.findViewById(R.id.edit_comment).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                UGCGuideEditBooksActivity.a(Q.this.a, n);
            }
        });
        view2.findViewById(R.id.comment_add_layout).setOnClickListener(new S(this, n));
        view2.findViewById(R.id.delete_comment).setOnClickListener(new T(this, n));
        this.a(n, view2, this.getItem(n));
        return view2;
    }
}
