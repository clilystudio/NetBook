package com.clilystudio.app.netbook.ui.feed;

import android.view.LayoutInflater;
import android.widget.TextView;

import com.clilystudio.app.netbook.db.BookReadRecord;
import com.clilystudio.app.netbook.util.W;

public final class f extends W<BookReadRecord> {
    public f(FeedListActivity paramFeedListActivity, LayoutInflater paramLayoutInflater) {
        super(paramLayoutInflater, 2130903275);
    }

    private void a(TextView paramTextView) {
        paramTextView.setEnabled(false);
        paramTextView.setText("已移回");
        paramTextView.setBackgroundResource(2131427542);
        paramTextView.setTextColor(this.a.getResources().getColor(2131427412));
    }

    protected final int[] a() {
        return new int[]{2131493652, 2131493653, 2131493654, 2131493651};
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.feed.f
 * JD-Core Version:    0.6.2
 */