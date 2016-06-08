package com.clilystudio.netbook.ui.feed;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.db.BookReadRecord;

final class b
        implements AdapterView.OnItemClickListener {
    b(FeedAddActivity paramFeedAddActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        BookReadRecord localBookReadRecord = (BookReadRecord) FeedAddActivity.b(this.a).getItem(paramInt);
        if (FeedAddActivity.c(this.a).contains(localBookReadRecord))
            FeedAddActivity.c(this.a).remove(localBookReadRecord);
        while (true) {
            FeedAddActivity.b(this.a).notifyDataSetChanged();
            return;
            FeedAddActivity.c(this.a).add(localBookReadRecord);
        }
    }
}

