
package com.clilystudio.netbook.ui.ugcbook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.support.design.widget.am;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.event.J;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Author;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.ResultStatus;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.user.UserUGCActivity;
import java.io.IOException;
import java.io.Serializable;
import java.util.List;

final class O extends com.clilystudio.netbook.a.c {

    public O(UGCGuideEditBooksActivity UGCGuideEditBooksActivity1)
    {
        super( (Activity) UGCGuideEditBooksActivity1, 2131034218 );
        a = UGCGuideEditBooksActivity1;
    }

    private UGCGuideEditBooksActivity a;

    private transient ResultStatus a()
    {
        try
        {
            Account Account2 = am.a( (Activity) a );
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
        }
        return null;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a();
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void a(Object Object1)
    {
    }
}
