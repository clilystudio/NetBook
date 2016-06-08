package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.db.BookReadRecord;

final class B
        implements AdapterView.OnItemClickListener {
    B(AddReviewActivity paramAddReviewActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        AddReviewActivity.a(this.a, ((BookReadRecord) AddReviewActivity.b(this.a).getItem(paramInt)).getBookId());
        AddReviewActivity.b(this.a).a(paramInt);
        AddReviewActivity.b(this.a).notifyDataSetChanged();
    }
}

