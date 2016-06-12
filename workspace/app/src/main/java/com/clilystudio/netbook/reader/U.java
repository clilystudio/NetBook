
package com.clilystudio.netbook.reader;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

final class U implements Y {

    U(Reader Reader1)
    {
        a = Reader1;
        b = (Map) new HashMap();
        c = (Map) new HashMap();
    }

    Reader a;     // final access specifier removed
    private Map b;
    private Map c;

    static Map a(U U1)
    {
        return U1.b;
    }

    static Map b(U U1)
    {
        return U1.c;
    }

    public final void a(int int1, e e2, boolean boolean3)
    {
        Object Object5;

        synchronized( this )
        {
            Object5 = (ArrayList) b.get( Integer.valueOf( int1 ) );
        }
        if( Object5 == null )
        {
            try
            {
                Object5 = new ArrayList();
                b.put( Integer.valueOf( int1 ), Object5 );
                ((ArrayList) Object5).add( e2 );
            }
            finally
            {
                throw Object4;
            }
            ;
        }
        if( !boolean3 )
        {
            Integer Integer8;

            try
            {
                Reader.a( a, 0, Reader$Type.CHAPTER );
                Integer8 = (Integer) c.get( Integer.valueOf( int1 ) );
            }
            finally
            {
                throw Object4;
            }
            if( Integer8 == null )
            {
                try
                {
                    c.put( Integer.valueOf( int1 ), Integer.valueOf( 1 ) );
                    Reader.e( a ).execute( (Runnable) new V( this, int1, int1 ) );
                }
                finally
                {
                    throw Object4;
                }
            }
            else
            {
                try
                {
                    c.put( Integer.valueOf( int1 ), Integer.valueOf( 1 + Integer8.intValue() ) );
                }
                finally
                {
                    throw Object4;
                }
            }
        }
    }
}
