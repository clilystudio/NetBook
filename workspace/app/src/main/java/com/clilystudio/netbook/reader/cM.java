
package com.clilystudio.netbook.reader;

import android.content.Context;
import android.os.AsyncTask;
import java.util.Map;

public final class cM {

    public cM(Context Context1, cQ cQ2)
    {
        a = cQ2;
        b = Context1;
    }

    private cQ a;
    private Context b;
    private String[] c = new String[20];

    static String[] a(cM cM1)
    {
        return cM1.c;
    }

    static cQ b(cM cM1)
    {
        return cM1.a;
    }

    public final boolean a(String String1)
    {
        float float2 = com.clilystudio.netbook.hpay100.a.a.H( b );
        float float3 = com.clilystudio.netbook.hpay100.a.a.a( b, "BFD_RANDOM_RATE", 2.0F );

        if( float3 == 2.0F )
        {
            float3 = (float) Math.random();
            com.clilystudio.netbook.hpay100.a.a.b( b, "BFD_RANDOM_RATE", float3 );
        }
        if( float2 > float3 )
        {
            com.a.a.a.a( b, "rec_C6613205_93B6_61A6_9FEC_180B70F91B94", com.clilystudio.netbook.hpay100.a.a.a( b, 20, String1 ), (com.a.a.c) new cN( this, String1 ) );
            return true;
        }
        else
        {
            new cO( this ).b( new String[] { String1 } );
            return false;
        }
    }
}
