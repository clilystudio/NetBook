
package com.clilystudio.netbook.reader.random;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.a.c;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.model.BookInfo;
import com.clilystudio.netbook.model.MysteryBook;
import com.clilystudio.netbook.model.MysteryBookList;
import com.clilystudio.netbook.model.MysteryBookList$MysteryBookRoot;
import com.clilystudio.netbook.model.MysteryToc;
import com.clilystudio.netbook.util.e;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

public final class b extends c {

    public b(Activity Activity1, int int2, boolean boolean3)
    {
        super( Activity1, 2131034218 );
    }

    private final boolean a = true;

    private static transient MysteryBookList a()
    {
        MysteryBookList MysteryBookList3;

        try
        {
            com.clilystudio.netbook.api.b.a();
            MysteryBookList3 = com.clilystudio.netbook.api.b.b().h();
        }
        catch( IOException IOException1 )
        {
            IOException1.printStackTrace();
            return null;
        }
        return MysteryBookList3;
    }

    public final volatile Object a(Object[] Object_1darray1)
    {
        return a();
    }

    public final void a(Object Object1)
    {
        MysteryBookList MysteryBookList2 = (MysteryBookList) Object1;

        if( b() != null )
        {
            if( MysteryBookList2 != null && MysteryBookList2.getBooks() != null && MysteryBookList2.getBooks().length > 0 )
            {
                List List3 = Arrays.asList( MysteryBookList2.getBooks() );
                int int4 = com.clilystudio.netbook.hpay100.a.a.a( (Context) b(), "randomBooks", -1 );
                int int5;
                MysteryBookList$MysteryBookRoot MysteryBookRoot6;
                MysteryBook MysteryBook7;
                String String8;
                String String9;
                MysteryToc MysteryToc10;
                String String11;
                BookInfo BookInfo12;
                Intent Intent13;

                if( int4 == -1 )
                    int4 = (int) (Math.random() * (double) List3.size());
                int5 = int4 + 1;
                if( int5 < 0 || int5 >= List3.size() )
                    int5 = 0;
                com.clilystudio.netbook.hpay100.a.a.b( (Context) b(), "randomBooks", int5 );
                MysteryBookRoot6 = (MysteryBookList$MysteryBookRoot) List3.get( int5 );
                MysteryBook7 = MysteryBookRoot6.getBook();
                String8 = MysteryBook7.get_id();
                String9 = MysteryBook7.getTitle();
                MysteryToc10 = MysteryBookRoot6.getToc();
                if( MysteryToc10 == null )
                    String11 = "";
                else
                    String11 = MysteryToc10.get_id();
                BookInfo12 = new BookInfo();
                BookInfo12.setId( MysteryBook7.get_id() );
                BookInfo12.setTitle( MysteryBook7.getTitle() );
                BookInfo12.setLastChapter( MysteryBook7.getLastChapter() );
                BookInfo12.setUpdated( MysteryBook7.getUpdated() );
                BookInfo12.setCover( MysteryBook7.getCover() );
                MyApplication.a().a( BookInfo12 );
                Intent13 = ReaderRandomActivity.a( (Context) b(), String8, String9, String11 );
                b().startActivity( Intent13 );
                if( a )
                    b().finish();
            }
            else
            {
                e.a( b(), "\u6253\u5F00\u5931\u8D25\u6216\u6682\u65F6\u672A\u5F00\u653E" );
                return;
            }
        }
    }
}
