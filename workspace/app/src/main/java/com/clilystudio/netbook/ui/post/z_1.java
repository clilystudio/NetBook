
package com.clilystudio.netbook.ui.post;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.PostPublish;
import com.clilystudio.netbook.util.e;

final class z extends c {

    public z(AddGirlTopicActivity AddGirlTopicActivity1, Activity Activity2, int int3)
    {
        super( Activity2, 2131034430 );
        a = AddGirlTopicActivity1;
    }

    private AddGirlTopicActivity a;

    private transient PostPublish a(String[] String_1darray1)
    {
        PostPublish PostPublish3;

        try
        {
            PostPublish3 = com.clilystudio.netbook.api.b.b().g( String_1darray1[0], String_1darray1[1], String_1darray1[2], "girl" );
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
