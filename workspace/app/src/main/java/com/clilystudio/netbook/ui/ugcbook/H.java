
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.os.AsyncTask;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.ab;
import com.clilystudio.netbook.util.e;
import java.util.List;

final class H implements ab {

    H(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        a = UGCGuideEditBooksActivity1;
    }

    private UGCGuideEditBooksActivity a;

    public final void a()
    {
        if( UGCGuideEditBooksActivity.a( a ).getBooks().size() == 0 )
            e.a( (Activity) a, "\u81F3\u5C11\u8981\u6DFB\u52A0\u4E00\u672C\u4E66\u7C4D\u624D\u80FD\u4FDD\u5B58\u54E6" );
        else
            new P( a ).b( new Void[0] );
    }

    public final void b()
    {
        if( UGCGuideEditBooksActivity.b( a ) )
            new O( a ).b( new Void[0] );
    }
}
