package com.clilystudio.netbook.ui.feed;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.db.BookReadRecord;

final class b implements AdapterView.OnItemClickListener {
    private /* synthetic */ FeedAddActivity a;

    b(FeedAddActivity feedAddActivity) {
        this.a = feedAddActivity;
    }

    /*
     * Enabled aggressive block sorting
     */
    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        BookReadRecord bookReadRecord = (BookReadRecord) FeedAddActivity.b(this.a).getItem(n);
        if (FeedAddActivity.c(this.a).contains(bookReadRecord)) {
            FeedAddActivity.c(this.a).remove(bookReadRecord);
        } else {
            FeedAddActivity.c(this.a).add(bookReadRecord);
        }
        FeedAddActivity.b(this.a).notifyDataSetChanged();
    }
}
