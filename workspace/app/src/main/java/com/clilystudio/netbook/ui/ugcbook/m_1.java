package com.clilystudio.netbook.ui.ugcbook;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.UGCBookDetail$UGCBookContainer;
import com.clilystudio.netbook.ui.BookInfoActivity;

final class m implements AdapterView.OnItemClickListener {
    private /* synthetic */ UGCDetailActivity a;

    m(UGCDetailActivity uGCDetailActivity) {
        this.a = uGCDetailActivity;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l2) {
        UGCBookDetail$UGCBookContainer uGCBookDetail$UGCBookContainer;
        int n2 = n - UGCDetailActivity.g(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < UGCDetailActivity.h(this.a).getCount() && (uGCBookDetail$UGCBookContainer = (UGCBookDetail$UGCBookContainer) UGCDetailActivity.h(this.a).getItem(n2)) != null && uGCBookDetail$UGCBookContainer.getBook() != null) {
            Intent intent = new Intent(this.a, BookInfoActivity.class);
            intent.putExtra("book_id", uGCBookDetail$UGCBookContainer.getBook().get_id());
            this.a.startActivity(intent);
        }
    }
}
