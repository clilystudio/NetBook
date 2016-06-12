
package com.clilystudio.netbook.a;

import android.app.Activity;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.TocSource;
import com.clilystudio.netbook.model.TocSourceRoot;

public abstract class a extends c {

    public a(Activity Activity1, boolean boolean2)
    {
        super( Activity1, 2131034218, boolean2 );
    }

    private static transient TocSourceRoot a(String[] String_1darray1)
    {
        TocSourceRoot TocSourceRoot4;

        try
        {
            com.clilystudio.netbook.api.b.a();
            TocSourceRoot4 = com.clilystudio.netbook.api.b.b().g( String_1darray1[0] );
        }
        catch( Exception Exception2 )
        {
            Exception2.printStackTrace();
            return null;
        }
        return TocSourceRoot4;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected void a()
    {
    }

    protected abstract void a(TocSourceRoot TocSourceRoot1);

    public final void a(Object Object1)
    {
        TocSourceRoot TocSourceRoot2 = (TocSourceRoot) Object1;

        if( TocSourceRoot2 != null && TocSourceRoot2.getSources() != null )
            a( TocSourceRoot2 );
        else
            a();
    }
}
