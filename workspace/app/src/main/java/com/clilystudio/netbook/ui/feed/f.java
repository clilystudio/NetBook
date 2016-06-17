package com.clilystudio.netbook.ui.feed;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.*;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class f extends W<BookReadRecord> {
    private /* synthetic */ FeedListActivity a;

    public f(FeedListActivity feedListActivity, LayoutInflater layoutInflater) {
        this.a = feedListActivity;
        super(layoutInflater, R.layout.list_item_feed_list);
    }

    static /* synthetic */ void a(f f2, TextView textView) {
        f2.a(textView);
    }

    private void a(TextView textView) {
        textView.setEnabled(false);
        textView.setText("\u5df2\u79fb\u56de");
        textView.setBackgroundResource(R.color.transparent);
        textView.setTextColor(this.a.getResources().getColor(R.color.feed_list_light));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        final BookReadRecord bookReadRecord = (BookReadRecord) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookReadRecord.getFullCover(), R.drawable.cover_default);
        this.a(1, bookReadRecord.getTitle());
        int n2 = bookReadRecord.getChapterCount() - bookReadRecord.getChapterCountAtFeed();
        int n3 = 0;
        if (n2 >= 0) {
            n3 = n2;
        }
        this.a(2, "\u517b\u4e86 " + n3 + " \u7ae0\u672a\u8bfb");
        final TextView textView = (TextView) this.a(3, TextView.class);
        if (bookReadRecord.isFeeding()) {
            textView.setEnabled(true);
            textView.setText("\u79fb\u56de");
            if (n3 >= FeedListActivity.a(this.a)) {
                textView.setBackgroundResource(R.drawable.feed_list_remove_red);
                textView.setTextColor(this.a.getResources().getColor(android.R.color.white));
            } else {
                textView.setBackgroundResource(R.drawable.feed_list_remove_light);
                textView.setTextColor(this.a.getResources().getColor(R.color.feed_list_light));
            }
        } else {
            this.a(textView);
        }
//        g(this, textView, bookReadRecord)
        textView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                f.a(f.this, textView);
                bookReadRecord.setFeeding(false);
                bookReadRecord.setFeedFat(false);
                BookReadRecord.addAccountInfo(bookReadRecord);
                bookReadRecord.save();
                com.clilystudio.netbook.event.i.a().post(new n(bookReadRecord.getBookId()));
            }
        });
    }

    @Override
    protected final int[] a() {
        return new int[]{R.id.book_feed_list_cover, R.id.book_feed_list_title, R.id.book_feed_list_chapter, R.id.book_feed_list_remove};
    }
}
