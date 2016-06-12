
package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.CategoryRoot;

final class al extends com.clilystudio.netbook.a.e {

    al(BookCategoryActivity BookCategoryActivity1, byte byte2)
    {
        this( BookCategoryActivity1 );
    }

    private BookCategoryActivity a;

    private al(BookCategoryActivity BookCategoryActivity1)
    {
        a = BookCategoryActivity1;
    }

    private transient CategoryRoot a()
    {
        CategoryRoot CategoryRoot2;

        try
        {
            CategoryRoot2 = com.clilystudio.netbook.api.b.b().e();
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return null;
        }
        return CategoryRoot2;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (CategoryRoot) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((CategoryRoot) Object2).isOk() )
        {
            BookCategoryActivity.a( a, 1 );
            BookCategoryActivity.a( a, (CategoryRoot) Object2 );
        }
        else
            BookCategoryActivity.a( a, 2 );
    }
}
