
package com.clilystudio.netbook.reader.dl;

import android.content.Context;
import android.content.Intent;
import android.support.design.widget.am;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.model.Chapter;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.ChapterRoot;

final class e extends com.clilystudio.netbook.a.e {

    public e(BookDownloadService BookDownloadService1, ChapterLink ChapterLink2, int int3)
    {
        c = BookDownloadService1;
        a = ChapterLink2;
        b = int3;
    }

    private ChapterLink a;
    private int b;
    private BookDownloadService c;

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        ChapterRoot ChapterRoot2 = BookDownloadService.f( c ).a( a, b );
        BookDlRecord BookDlRecord3 = BookDlRecord.get( BookDownloadService.d( c ) );

        if( BookDlRecord3 != null )
        {
            BookDlRecord3.setProgress( BookDownloadService.g( c ) );
            BookDlRecord3.save();
        }
        return ChapterRoot2;
    }

    protected final void onPostExecute(Object Object1)
    {
        int int2 = 1;
        Object Object3 = (ChapterRoot) Object1;
        int int8;

        super.onPostExecute( Object3 );
        BookDownloadService.b( c ).putExtra( "SerDlCurrentCount", BookDownloadService.g( c ) );
        BookDownloadService.b( c ).putExtra( "SerDlChapterCount", BookDownloadService.h( c ) );
        BookDownloadService.b( c ).putExtra( "bookId", BookDownloadService.d( c ) );
        BookDownloadService.i( c );
        int8 = com.clilystudio.netbook.hpay100.a.a.r( (Context) c );
        if( BookDownloadService.j( c ) == int2 && int8 > int2 )
        {
            BookDownloadService.k( c );
            com.clilystudio.netbook.util.e.a( c.getApplicationContext(), "\u6D41\u91CF\u4E0B\u81EA\u52A8\u6682\u505C\u7F13\u5B58\uFF0C\u8FDE\u63A5 Wi-Fi \u7EE7\u7EED\u6216\u624B\u52A8\u5F00\u59CB\u7F13\u5B58" );
        }
        else if( com.clilystudio.netbook.hpay100.a.a.t( (Context) c ) )
        {
            BookDownloadService.e( c );
            BookDownloadService.b( c, false );
        }
        else
        {
            BookDownloadService.k( c );
            com.clilystudio.netbook.util.e.a( c.getApplicationContext(), "\u7F13\u5B58\u6682\u505C\uFF0C\u8FDE\u63A5\u7F51\u7EDC\u540E\u7EE7\u7EED\u4E0B\u8F7D" );
        }
        BookDownloadService.b( c, int8 );
        if( Object3 != null && ((ChapterRoot) Object3).getChapter() != null )
        {
            Chapter Chapter12 = ((ChapterRoot) Object3).getChapter();

            if( Chapter12.getBody() != null )
            {
                String String13 = Chapter12.getLink();

                BookDownloadService.b( c ).putExtra( "SerDlLink", String13 );
                BookDownloadService.l( c );
                if( BookDownloadService.m( c ) == null )
                    BookDownloadService.a( c, com.clilystudio.netbook.util.I.c );
                com.clilystudio.netbook.hpay100.a.a.a( BookDownloadService.d( c ), BookDownloadService.m( c ), am.e( String13 ), Chapter12 );
            }
        }
        BookDownloadService.c( c );
        if( BookDownloadService.n( c ) == 0 || BookDownloadService.g( c ) == BookDownloadService.h( c ) )
        {
            com.clilystudio.netbook.event.i.a().c( new com.clilystudio.netbook.event.I() );
            BookDownloadService.c( c, BookDownloadService.g( c ) );
        }
        else
        {
            if( BookDownloadService.h( c ) > 20 )
                int2 = BookDownloadService.h( c ) / 20;
            if( BookDownloadService.g( c ) - BookDownloadService.n( c ) >= int2 )
            {
                com.clilystudio.netbook.event.i.a().c( new com.clilystudio.netbook.event.I() );
                BookDownloadService.c( c, BookDownloadService.g( c ) );
                return;
            }
        }
    }
}
