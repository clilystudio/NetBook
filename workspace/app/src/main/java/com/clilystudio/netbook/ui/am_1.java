package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;

import com.clilystudio.netbook.model.CategoryBook;

final class am
        implements AdapterView.OnItemClickListener {
    private /* synthetic */ BookCategoryFragment a;

    am(BookCategoryFragment bookCategoryFragment) {
        this.a = bookCategoryFragment;
    }

    @Override
    public final void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
        int n2 = n - BookCategoryFragment.a(this.a).getHeaderViewsCount();
        if (n2 >= 0 && n2 < BookCategoryFragment.b(this.a).size()) {
            CategoryBook categoryBook = (CategoryBook) BookCategoryFragment.b(this.a).get(n2);
            BookCategoryFragment.a(this.a, categoryBook);
        }
    }
}
