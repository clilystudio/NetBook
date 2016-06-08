package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.CategoryBook;

final class am
        implements AdapterView.OnItemClickListener {
    am(BookCategoryFragment paramBookCategoryFragment) {
    }

    public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
        int i = paramInt - BookCategoryFragment.a(this.a).getHeaderViewsCount();
        if ((i >= 0) && (i < BookCategoryFragment.b(this.a).size())) {
            CategoryBook localCategoryBook = (CategoryBook) BookCategoryFragment.b(this.a).get(i);
            BookCategoryFragment.a(this.a, localCategoryBook);
        }
    }
}

