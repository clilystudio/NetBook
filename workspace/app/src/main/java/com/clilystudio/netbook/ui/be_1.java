
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.text.SpannableString;
import com.clilystudio.netbook.b.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class be {

    public be(Context Context1, String String2)
    {
        a = Context1;
        b = new SpannableString( (CharSequence) String2 );
        a();
    }

    protected Context a;
    protected SpannableString b;

    private void a(List List1)
    {
        Iterator Iterator2 = List1.iterator();

        while( Iterator2.hasNext() )
        {
            bf bf3 = (bf) Iterator2.next();

            b.setSpan( new c( a, bf3 ), bf3.a(), 1 + bf3.b(), 18 );
        }
    }

    protected void a()
    {
        Object Object1 = new ArrayList();
        int int2 = 0;
        int int3 = 0;
        int int4 = 0;

        while( int2 < b.length() )
        {
            char char5 = b.charAt( int2 );

            if( int4 == 0 )
            {
                if( char5 == 12298 )
                {
                    int3 = int2;
                    int4 = 12298;
                }
            }
            else if( char5 == 12299 )
            {
                if( int2 - int3 < 20 )
                    ((List) Object1).add( new bf( this, b.toString().substring( int3 + 1, int2 ), int3, int2 ) );
                int3 = 0;
                int4 = 0;
            }
            ++int2;
        }
        a( (List) Object1 );
    }

    public final SpannableString b()
    {
        return b;
    }
}
