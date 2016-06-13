package com.clilystudio.netbook.ui.post;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.db.BookReadRecord;

final class B
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ AddReviewActivity a;

    B(AddReviewActivity addReviewActivity) {
        this.a = addReviewActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        AddReviewActivity.a(this.a, ((BookReadRecord) AddReviewActivity.b(this.a).getItem(n)).getBookId());
        AddReviewActivity.b(this.a).a(n);
        AddReviewActivity.b(this.a).notifyDataSetChanged();
    }
}
