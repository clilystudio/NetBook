
package com.clilystudio.netbook.ui;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.CategoryLevelRoot;

final class ak extends e {

    ak(BookCategoryActivity BookCategoryActivity1, byte byte2)
    {
        this( BookCategoryActivity1 );
    }

    private BookCategoryActivity a;

    private ak(BookCategoryActivity BookCategoryActivity1)
    {
        a = BookCategoryActivity1;
    }

    private transient CategoryLevelRoot a()
    {
        CategoryLevelRoot CategoryLevelRoot2;

        try
        {
            CategoryLevelRoot2 = com.clilystudio.netbook.api.b.b().f();
        }
        catch( Exception Exception1 )
        {
            Exception1.printStackTrace();
            return null;
        }
        return CategoryLevelRoot2;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a();
    }

    protected final void onPostExecute(Object Object1)
    {
        Object Object2 = (CategoryLevelRoot) Object1;

        super.onPostExecute( Object2 );
        if( Object2 != null && ((CategoryLevelRoot) Object2).isOk() )
            BookCategoryActivity.a( a, (CategoryLevelRoot) Object2 );
    }
}
