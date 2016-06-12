
package com.clilystudio.netbook.reader.txt;

import android.content.Context;
import com.iflytek.cloud.SpeechSynthesizer;
import com.clilystudio.netbook.reader.PagerWidget;
import com.clilystudio.netbook.reader.cn;

final class w implements cn {

    w(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void a()
    {
        ReaderTxtActivity.a( a, 2 );
        ReaderTxtActivity.c( a ).setReadMode( ReaderTxtActivity.b( a ) );
        ReaderTxtActivity.j( a );
        ReaderTxtActivity.k( a );
    }

    public final void a(int int1)
    {
        ReaderTxtActivity.l( a ).setParameter( "speed", new StringBuilder().append( int1 ).toString() );
        com.clilystudio.netbook.hpay100.a.a.b( (Context) a, "speech_speed", int1 );
    }

    public final void a(boolean boolean1)
    {
        ReaderTxtActivity.l( a ).stopSpeaking();
        ReaderTxtActivity.a( a, 0 );
        ReaderTxtActivity.c( a ).setReadMode( ReaderTxtActivity.b( a ) );
        ReaderTxtActivity.m( a );
        if( boolean1 )
        {
            ReaderTxtActivity.a( a );
            ReaderTxtActivity.b( a, 0 );
            ReaderTxtActivity.c( a, 0 );
            ReaderTxtActivity.d( a, 0 );
            ReaderTxtActivity.n( a );
        }
    }

    public final void b()
    {
        ReaderTxtActivity.l( a ).pauseSpeaking();
        ReaderTxtActivity.a( a, true );
    }

    public final void c()
    {
        ReaderTxtActivity.l( a ).resumeSpeaking();
    }

    public final void d()
    {
        a.e();
    }
}
