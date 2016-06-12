
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;
import com.iflytek.cloud.SpeechUtility;

final class cg implements View$OnClickListener {

    cg(ReaderTtsSetWidget ReaderTtsSetWidget1)
    {
        a = ReaderTtsSetWidget1;
    }

    private ReaderTtsSetWidget a;

    public final void onClick(View View1)
    {
        a.setVisibility( 8 );
        ReaderTtsSetWidget.a( a ).b();
        SpeechUtility.getUtility().openEngineSettings( "tts" );
    }
}
