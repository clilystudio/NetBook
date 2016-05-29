package com.clilystudio.app.netbook.ui.ugcbook;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.app.netbook.model.UGCBookDetail.UGCBookContainer;
import com.clilystudio.app.netbook.ui.BookInfoActivity;

final class m
        implements AdapterView.OnItemClickListener {
    m(UGCDetailActivity paramUGCDetailActivity) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - UGCDetailActivity.g(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < UGCDetailActivity.h(this.a).getCount())) {
            UGCBookDetail.UGCBookContainer localUGCBookContainer = (UGCBookDetail.UGCBookContainer) UGCDetailActivity.h(this.a).getItem(i);
            if ((localUGCBookContainer != null) && (localUGCBookContainer.getBook() != null)) {
                Intent localIntent = new Intent(this.a, BookInfoActivity.class);
                localIntent.putExtra("book_id", localUGCBookContainer.getBook().get_id());
                this.a.startActivity(localIntent);
            }
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.ugcbook.m
 * JD-Core Version:    0.6.2
 */