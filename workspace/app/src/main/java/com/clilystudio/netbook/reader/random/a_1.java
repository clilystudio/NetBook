
package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.MysteryDefaultBook;
import com.clilystudio.netbook.model.TocSummary;
import java.io.IOException;
import java.util.Date;
import java.util.List;

public final class a extends com.clilystudio.netbook.a.e {

    public a(ProgressDialog ProgressDialog1, Activity Activity2, boolean boolean3)
    {
        a = ProgressDialog1;
        b = Activity2;
        c = boolean3;
    }

    private ProgressDialog a;
    private Activity b;
    private boolean c;

    private static transient MysteryDefaultBook a(String[] String_1darray1)
    {
        String String2 = String_1darray1[0];

        try
        {
            BookInfo BookInfo5;
            List List7;
            MysteryDefaultBook MysteryDefaultBook8;

            com.clilystudio.netbook.api.b.a();
            BookInfo5 = com.clilystudio.netbook.api.b.b().r( String2 );
            com.clilystudio.netbook.api.b.a();
            List7 = com.clilystudio.netbook.api.b.b().d( String2 );
            if( List7.size() <= 0 )
                return null;
            MysteryDefaultBook8 = new MysteryDefaultBook();
            MysteryDefaultBook8.set_id( String2 );
            MysteryDefaultBook8.setTitle( BookInfo5.getTitle() );
            MysteryDefaultBook8.setLastChapter( BookInfo5.getLastChapter() );
            MysteryDefaultBook8.setAuthor( BookInfo5.getAuthor() );
            MysteryDefaultBook8.setCover( BookInfo5.getCover() );
            MysteryDefaultBook8.setUpdated( BookInfo5.getUpdated() );
            MysteryDefaultBook8.setDefaultTocId( ((TocSummary) List7.get( 0 )).get_id() );
        }
        catch( IOException IOException3 )
        {
            IOException3.printStackTrace();
        }
        return null;
    }

    protected final Object doInBackground(Object[] Object_1darray1)
    {
        return a( (String[]) Object_1darray1 );
    }

    protected final void onPostExecute(Object Object1)
    {
        MysteryDefaultBook MysteryDefaultBook2 = (MysteryDefaultBook) Object1;

        if( a != null && a.isShowing() )
        {
            a.dismiss();
            if( MysteryDefaultBook2 != null )
            {
                String String3 = MysteryDefaultBook2.get_id();
                String String4 = MysteryDefaultBook2.getTitle();
                String String5 = MysteryDefaultBook2.getDefaultTocId();
                BookInfo BookInfo6;
                Intent Intent7;

                if( String5 == null )
                    String5 = "";
                BookInfo6 = new BookInfo();
                BookInfo6.setId( MysteryDefaultBook2.get_id() );
                BookInfo6.setTitle( MysteryDefaultBook2.getTitle() );
                BookInfo6.setLastChapter( MysteryDefaultBook2.getLastChapter() );
                BookInfo6.setUpdated( MysteryDefaultBook2.getUpdated() );
                BookInfo6.setCover( MysteryDefaultBook2.getCover() );
                BookInfo6.setAuthor( MysteryDefaultBook2.getAuthor() );
                MyApplication.a().a( BookInfo6 );
                Intent7 = ReaderRandomActivity.a( (Context) b, String3, String4, String5 );
                b.startActivity( Intent7 );
                if( c )
                    b.finish();
            }
            else
            {
                com.clilystudio.netbook.util.e.a( b, "\u6253\u5F00\u5931\u8D25\u6216\u6682\u65F6\u672A\u5F00\u653E" );
                return;
            }
        }
    }
}
