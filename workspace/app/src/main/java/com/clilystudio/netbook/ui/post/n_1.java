
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class n extends c {

    public n(AddBookHelpActivity AddBookHelpActivity1, Activity Activity2, int int3)
    {
        super( Activity2, 2131034430 );
        a = AddBookHelpActivity1;
    }

    private AddBookHelpActivity a;

    private transient PostPublish a(String[] String_1darray1)
    {
        PostPublish PostPublish3;

        try
        {
            PostPublish3 = com.clilystudio.netbook.api.b.b().h( String_1darray1[0], String_1darray1[1], String_1darray1[2] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return PostPublish3;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }
// Error: Internal #201: 
// The following method may not be correct.

    public final void a(Object Object1)
    {
    }
}
