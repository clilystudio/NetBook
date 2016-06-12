
package com.clilystudio.netbook.reader;

import android.os.Bundle;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SynthesizerListener;
import java.util.LinkedList;

final class am implements SynthesizerListener {

    am(ReaderActivity ReaderActivity1)
    {
        a = ReaderActivity1;
    }

    private ReaderActivity a;

    public final void onBufferProgress(int int1, int int2, int int3, String String4)
    {
    }

    public final void onCompleted(SpeechError SpeechError1)
    {
        if( ReaderActivity.G( a ) < -1 + ReaderActivity.H( a ).length )
        {
            ReaderActivity.K( a );
            ReaderActivity.c( a, false );
        }
        else
            ReaderActivity.J( a );
    }

    public final void onEvent(int int1, int int2, int int3, Bundle Bundle4)
    {
    }

    public final void onSpeakBegin()
    {
    }

    public final void onSpeakPaused()
    {
    }

    public final void onSpeakProgress(int int1, int int2, int int3)
    {
        if( ReaderActivity.G( a ) == -1 + ReaderActivity.H( a ).length && int1 >= -1 + ((Integer) ReaderActivity.I( a ).get( 0 )).intValue() && ((Integer) ReaderActivity.I( a ).get( 0 )).intValue() < 100 )
            ReaderActivity.J( a );
    }

    public final void onSpeakResumed()
    {
    }
}
