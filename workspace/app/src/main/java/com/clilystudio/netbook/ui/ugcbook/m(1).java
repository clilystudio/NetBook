package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.UGCBookDetail.UGCBookContainer;
import com.clilystudio.netbook.ui.BookInfoActivity;

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

