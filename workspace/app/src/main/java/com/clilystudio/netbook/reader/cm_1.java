
package com.clilystudio.netbook.reader;

import android.view.View;
import android.view.View$OnClickListener;
import com.clilystudio.netbook.model.TtsRoot$Tts;

final class cm implements View$OnClickListener {

    cm(ReaderTtsSetWidget ReaderTtsSetWidget1, int int2)
    {
        b = ReaderTtsSetWidget1;
        a = int2;
    }

    private int a;
    private ReaderTtsSetWidget b;

    public final void onClick(View View1)
    {
        if( !com.clilystudio.netbook.reader.ReaderTtsSetWidget.a( b, ReaderTtsSetWidget.h( b )[a] ) )
            ReaderTtsSetWidget.c( b, a );
    }
}
