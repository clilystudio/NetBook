
package com.clilystudio.netbook.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListView;
import com.clilystudio.netbook.model.CategoryBook;
import java.util.List;

final class am implements AdapterView$OnItemClickListener {

    am(BookCategoryFragment BookCategoryFragment1)
    {
        a = BookCategoryFragment1;
    }

    private BookCategoryFragment a;

    public final void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4)
    {
        int int6 = int3 - BookCategoryFragment.a( a ).getHeaderViewsCount();

        if( int6 >= 0 && int6 < BookCategoryFragment.b( a ).size() )
        {
            CategoryBook CategoryBook7 = (CategoryBook) BookCategoryFragment.b( a ).get( int6 );

            BookCategoryFragment.a( a, CategoryBook7 );
        }
    }
}
