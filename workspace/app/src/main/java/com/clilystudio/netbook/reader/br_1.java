
package com.clilystudio.netbook.reader;

import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.MixChapterResource;
import com.clilystudio.netbook.util.W;

final class br extends W {

    public br(ReaderChapterDialog ReaderChapterDialog1, LayoutInflater LayoutInflater2)
    {
        super( LayoutInflater2, 2130903271 );
        a = ReaderChapterDialog1;
    }

    private ReaderChapterDialog a;

    protected final void a(int int1, Object Object2)
    {
        MixChapterResource MixChapterResource3 = (MixChapterResource) Object2;
        ChapterLink ChapterLink4 = MixChapterResource3.getChapter();

        if( ChapterLink4 != null )
        {
            a( 0, (CharSequence) MixChapterResource3.getHost() );
            if( ReaderChapterDialog.a( a ) != null && ReaderChapterDialog.a( a ).equals( ChapterLink4.getLink() ) )
                a( 1, false );
            else
            {
                a( 1, true );
                return;
            }
        }
    }

    protected final int[] a()
    {
        return new int[] { 2131493636, 2131493637 };
    }
}
