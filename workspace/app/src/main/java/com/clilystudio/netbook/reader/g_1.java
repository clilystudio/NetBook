
package com.clilystudio.netbook.reader;

import android.text.Html;
import android.text.Spanned;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.mixtoc.SsTocRoot;
import com.clilystudio.netbook.model.mixtoc.SsTocRow;
import java.io.IOException;

final class g implements Runnable {

    g(f f1, int int2, int int3, ChapterLink[][] ChapterLink_2darray4)
    {
        d = f1;
        a = int2;
        b = int3;
        c = ChapterLink_2darray4;
    }

    private int a;
    private int b;
    private ChapterLink[][] c;
    private f d;

    public final void run()
    {
        SsTocRoot SsTocRoot2;

        try
        {
            SsTocRoot SsTocRoot8 = com.clilystudio.netbook.api.b.b().a( a, b, f.a( d ) );
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            SsTocRoot2 = null;
        }
        if( SsTocRoot2 != null && SsTocRoot2.getRows() != null )
        {
            SsTocRow[] SsTocRow_1darray3 = SsTocRoot2.getRows();
            ChapterLink[] ChapterLink_1darray4 = new ChapterLink[SsTocRow_1darray3.length];
            int int5;

            for( int5 = 0; int5 < SsTocRow_1darray3.length; ++int5 )
            {
                SsTocRow SsTocRow6 = SsTocRow_1darray3[int5];
                ChapterLink ChapterLink7 = new ChapterLink();

                ChapterLink7.setTitle( String.valueOf( Html.fromHtml( SsTocRow6.getSerialname() ) ) );
                ChapterLink7.setLink( String.valueOf( SsTocRow6.getSerialid() ) );
                ChapterLink_1darray4[int5] = ChapterLink7;
            }
            c[-1 + a] = ChapterLink_1darray4;
        }
    }
}
