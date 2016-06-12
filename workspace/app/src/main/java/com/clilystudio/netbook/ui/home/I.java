
package com.clilystudio.netbook.ui.home;

import android.app.Activity;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.BookGenderRecommend;
import com.clilystudio.netbook.model.BookGenderRecommend$RecommendBook;
import java.io.IOException;

final class I extends c {

    public I(HomeShelfFragment HomeShelfFragment1, Activity Activity2)
    {
        super( Activity2, Activity2.getString( 2131034464 ) );
        a = HomeShelfFragment1;
    }

    private HomeShelfFragment a;

    private static transient BookGenderRecommend a(String[] String_1darray1)
    {
        int int2 = 0;
        BookGenderRecommend BookGenderRecommend4;

        try
        {
            BookGenderRecommend$RecommendBook[] RecommendBook_1darray6;
            int int7;

            com.clilystudio.netbook.api.b.a();
            BookGenderRecommend4 = com.clilystudio.netbook.api.b.b().ac( String_1darray1[0] );
            if( !BookGenderRecommend4.isOk() )
                return BookGenderRecommend4;
            RecommendBook_1darray6 = BookGenderRecommend4.getBooks();
            int7 = RecommendBook_1darray6.length;
        }
        catch( IOException IOException3 )
        {
            IOException3.printStackTrace();
            BookGenderRecommend4 = null;
        }
        return BookGenderRecommend4;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    public final void a(Object Object1)
    {
        BookGenderRecommend BookGenderRecommend2 = (BookGenderRecommend) Object1;

        if( BookGenderRecommend2 != null && BookGenderRecommend2.isOk() )
            HomeShelfFragment.l( a );
        else
            HomeShelfFragment.b( a, 3 );
    }
}
