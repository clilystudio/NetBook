
package com.clilystudio.netbook.b;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.clilystudio.netbook.exception.UnImplementException;
import com.clilystudio.netbook.model.InsideLink;
import com.clilystudio.netbook.model.InsideLinkType;
import com.clilystudio.netbook.util.InsideLinkIntent;

public final class a extends b {

    public a(Context Context1, InsideLink InsideLink2)
    {
        super( Context1 );
        b = InsideLink2;
    }

    private InsideLink b;

    final Intent a()
    {
        Object Object1;

        try
        {
            Object1 = new InsideLinkIntent( a, b );
        }
        catch( UnImplementException UnImplementException2 )
        {
            UnImplementException2.printStackTrace();
            return null;
        }
        return (Intent) Object1;
    }

    public final void onClick(View View1)
    {
        Context Context2;
        InsideLink InsideLink3;

        super.onClick( View1 );
        Context2 = a;
        InsideLink3 = b;
        com.clilystudio.netbook.umeng.a.b.a( Context2, "post_official_link_click", new StringBuilder().append( InsideLink3.getType().getName() ).append( "-" ).append( InsideLink3.getLabel() ).toString() );
    }
}
