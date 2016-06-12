
package com.clilystudio.netbook.ui.home;

import com.clilystudio.netbook.model.BookShelf;
import java.util.Comparator;

final class G implements Comparator {

    G(HomeShelfFragment HomeShelfFragment1, int int2)
    {
        b = HomeShelfFragment1;
        a = int2;
    }

    private int a;
    private HomeShelfFragment b;

    public final int compare(Object Object1, Object Object2)
    {
        BookShelf BookShelf3 = (BookShelf) Object1;
        BookShelf BookShelf4 = (BookShelf) Object2;

        if( !BookShelf3.isTop() || BookShelf4.isTop() )
        {
            if( !BookShelf4.isTop() || BookShelf3.isTop() )
            {
                if( HomeShelfFragment.a( b, BookShelf3, a ) == HomeShelfFragment.a( b, BookShelf4, a ) )
                    return 0;
                else if( HomeShelfFragment.a( b, BookShelf3, a ) > HomeShelfFragment.a( b, BookShelf4, a ) )
                    return -1;
            }
            return 1;
        }
    }
}
