package com.clilystudio.netbook.ui.feed;

import android.view.LayoutInflater;
import android.widget.TextView;

import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.util.W;
import com.clilystudio.netbook.widget.CoverView;

public final class f
        extends W<BookReadRecord> {
    private /* synthetic */ FeedListActivity a;

    public f(FeedListActivity feedListActivity, LayoutInflater layoutInflater) {
        this.a = feedListActivity;
        super(layoutInflater, 2130903275);
    }

    static /* synthetic */ void a(f f2, TextView textView) {
        f2.a(textView);
    }

    private void a(TextView textView) {
        textView.setEnabled(false);
        textView.setText("\u5df2\u79fb\u56de");
        textView.setBackgroundResource(2131427542);
        textView.setTextColor(this.a.getResources().getColor(2131427412));
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    protected final /* synthetic */ void a(int n, Object object) {
        BookReadRecord bookReadRecord = (BookReadRecord) object;
        ((CoverView) this.a(0, CoverView.class)).setImageUrl(bookReadRecord.getFullCover(), 2130837766);
        this.a(1, bookReadRecord.getTitle());
        int n2 = bookReadRecord.getChapterCount() - bookReadRecord.getChapterCountAtFeed();
        int n3 = 0;
        if (n2 >= 0) {
            n3 = n2;
        }
        this.a(2, "\u517b\u4e86 " + n3 + " \u7ae0\u672a\u8bfb");
        TextView textView = (TextView) this.a(3, TextView.class);
        if (bookReadRecord.isFeeding()) {
            textView.setEnabled(true);
            textView.setText("\u79fb\u56de");
            if (n3 >= FeedListActivity.a(this.a)) {
                textView.setBackgroundResource(2130837794);
                textView.setTextColor(this.a.getResources().getColor(2131427548));
            } else {
                textView.setBackgroundResource(2130837791);
                textView.setTextColor(this.a.getResources().getColor(2131427412));
            }
        } else {
            this.a(textView);
        }
        textView.setOnClickListener(new g(this, textView, bookReadRecord));
    }

    @Override
    protected final int[] a() {
        return new int[]{2131493652, 2131493653, 2131493654, 2131493651};
    }
}
