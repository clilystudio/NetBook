package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.db.BookReadRecord;

final class B
        implements AdapterView.OnItemClickListener {
    B(AddReviewActivity paramAddReviewActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        AddReviewActivity.a_initContentView(this.a, ((BookReadRecord) AddReviewActivity.b_initContentView(this.a).getItem(paramInt)).getBookId());
        AddReviewActivity.b_initContentView(this.a).a(paramInt);
        AddReviewActivity.b_initContentView(this.a).notifyDataSetChanged();
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.B
 * JD-Core Version:    0.6.2
 */