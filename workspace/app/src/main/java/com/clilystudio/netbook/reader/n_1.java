
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.support.design.widget.am;
import com.clilystudio.netbook.util.CipherUtil;
import java.util.LinkedList;
import java.util.List;

public final class n {

    public n(K K1, ReaderChapter ReaderChapter2, int[] int_1darray3, int int4)
    {
        a = K1;
        b = ReaderChapter2;
        c = int_1darray3;
        e = int4;
        d = int_1darray3[int4];
    }

    private K a;     // final access specifier removed
    private ReaderChapter b;     // final access specifier removed
    private int[] c;
    private int d;
    private int e;
    private int f;

    public static n a(K K1, ReaderChapter ReaderChapter2, int int3)
    {
        n n4 = new n( K1, ReaderChapter2, { 0 }, 0 );

        n4.f = int3;
        return n4;
    }

    public final ReaderChapter a()
    {
        return b;
    }

    public final String a(Context Context1)
    {
        return am.b( Context1, c() );
    }

    public final void a(int int1)
    {
        e = 0;
    }

    public final void a(e e1)
    {
        if( e() )
        {
            if( h() )
                a.b( 1 + b.getIndex(), e1, false );
            else
                e1.a( new n( a, b, c, 1 + e ) );
        }
        else
            e1.a( null );
    }

    public final void a(String String1)
    {
        c = a.a( String1 );
        d = c[0];
    }

    public final int b()
    {
        return c[e];
    }

    public final void b(e e1)
    {
        if( f() )
        {
            if( e > 0 )
                e1.a( new n( a, b, c, -1 + e ) );
            else
                a.a( -1 + b.getIndex(), e1, false );
        }
        else
            e1.a( null );
    }

    public final String c()
    {
        String String1 = b.getBody( this );

        if( String1 == null )
            return "";
        else
        {
            String String3;

            if( e > -1 + c.length )
                e = -1 + c.length;
            d = c[e];
            try
            {
                if( 1 + e < c.length )
                    return String1.substring( d, c[1 + e] );
                else
                    String3 = String1.substring( d );
            }
            catch( Exception Exception2 )
            {
                Exception2.printStackTrace();
                return "";
            }
            return String3;
        }
    }

    public final Object[] d()
    {
        String String1 = b.getBody( this );

label_191:
        {
            if( String1 == null )
                return null;
            else
            {
                Object[] Object_1darray2;

                if( e > -1 + c.length )
                    e = -1 + c.length;
                d = c[e];
                Object_1darray2 = new Object[2];
                try
                {
                    String String6;
                    String String17;
                    int int18;

                    if( 1 + e >= c.length )
                        break label_191;
                    String17 = String1.substring( d, c[1 + e] );
                    String6 = String1.substring( c[1 + e] );
                    int18 = String6.indexOf( "\n" );
                }
                catch( Exception Exception3 )
                {
                    Exception3.printStackTrace();
                }
                return Object_1darray2;
            }
        }
        try
        {
            String String4 = String1.substring( d );
        }
        catch( Exception Exception19 )
        {
            Exception19.printStackTrace();
        }
    }

    public final boolean e()
    {
        if( !h() || b.hasNext() )
            return true;
        else
            return false;
    }

    public final boolean f()
    {
        if( e > 0 || b.hasPrevious() )
            return true;
        else
            return false;
    }

    public final void g()
    {
        String String1 = CipherUtil.a( b.getKey(), b.getContent() );

        if( String1 != null )
        {
            c = a.a( String1 );
            d = c[0];
        }
    }

    public final boolean h()
    {
        if( 1 + e >= c.length )
            return true;
        else
            return false;
    }

    public final String i()
    {
        return b.getTitle();
    }

    public final int j()
    {
        return e;
    }

    public final int k()
    {
        return c.length;
    }

    public final int l()
    {
        return b.getIndex();
    }

    public final int m()
    {
        return d;
    }

    public final int n()
    {
        return f;
    }

    public final int o()
    {
        return b.getStatus();
    }

    public final boolean p()
    {
        if( b.getStatus() == 1 )
            return true;
        else
            return false;
    }

    public final K q()
    {
        return a;
    }
}
