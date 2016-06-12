
package com.clilystudio.netbook.reader.txt;

import android.os.Bundle;
import com.iflytek.cloud.SpeechError;
import com.iflytek.cloud.SynthesizerListener;
import java.util.LinkedList;

final class d implements SynthesizerListener {

    d(ReaderTxtActivity ReaderTxtActivity1)
    {
        a = ReaderTxtActivity1;
    }

    private ReaderTxtActivity a;

    public final void onBufferProgress(int int1, int int2, int int3, String String4)
    {
    }

    public final void onCompleted(SpeechError SpeechError1)
    {
        if( ReaderTxtActivity.w( a ) < -1 + ReaderTxtActivity.x( a ).length )
        {
            ReaderTxtActivity.A( a );
            ReaderTxtActivity.c( a, false );
        }
        else
            ReaderTxtActivity.z( a );
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
        if( ReaderTxtActivity.w( a ) == -1 + ReaderTxtActivity.x( a ).length && int1 >= -1 + ((Integer) ReaderTxtActivity.y( a ).get( 0 )).intValue() && ((Integer) ReaderTxtActivity.y( a ).get( 0 )).intValue() < 100 )
            ReaderTxtActivity.z( a );
    }

    public final void onSpeakResumed()
    {
    }
}
