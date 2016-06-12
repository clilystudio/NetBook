
package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.ui.aa;

final class aw implements aa {

    aw(BookPostTabActivity BookPostTabActivity1)
    {
        a = BookPostTabActivity1;
    }

    private BookPostTabActivity a;

    public final void a()
    {
        if( BookPostTabActivity.a( a ) != null && a.g() )
            BookPostTabActivity.a( a ).a();
        if( BookPostTabActivity.b( a ) != null && !a.g() )
            BookPostTabActivity.b( a ).a();
    }
}
