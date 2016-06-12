
package com.clilystudio.netbook.ui.game;

import android.app.Activity;
import android.app.DownloadManager;
import android.app.DownloadManager$Query;
import android.app.DownloadManager$Request;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Environment;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.model.Game;
import com.clilystudio.netbook.util.e;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class s {

    public s(Activity Activity1, Game Game2)
    {
        b = Activity1;
        c = Game2;
        a = (DownloadManager) Activity1.getSystemService( "download" );
    }

    private DownloadManager a;     // final access specifier removed
    private Activity b;     // final access specifier removed
    private Game c;     // final access specifier removed

    private long a(Uri Uri1)
    {
        DownloadManager$Request Request2;

        try
        {
            Request2 = new DownloadManager$Request( Uri1 );
        }
        catch( IllegalArgumentException IllegalArgumentException9 )
        {
            IllegalArgumentException9.printStackTrace();
            Request2 = null;
        }
        if( Request2 == null )
        {
            e.a( b, "\u65E0\u6CD5\u4E0B\u8F7D" );
            return 0L;
        }
        else
        {
            long long6;

            Request2.setTitle( (CharSequence) c.getName() );
            if( com.clilystudio.netbook.hpay100.a.a.g() )
            {
                Request2.allowScanningByMediaScanner();
                Request2.setNotificationVisibility( 1 );
            }
            Request2.setDestinationInExternalPublicDir( Environment.DIRECTORY_DOWNLOADS, com.clilystudio.netbook.hpay100.a.a.N( c.getAndroidLink() ) );
            try
            {
                long6 = a.enqueue( Request2 );
            }
            catch( Exception Exception5 )
            {
                Exception5.printStackTrace();
                return 0L;
            }
            return long6;
        }
    }

    public static void a(Activity Activity1, Game Game2)
    {
        if( Game2 != null )
        {
            Object Object3 = new ArrayList();

            ((ArrayList) Object3).add( Game2 );
            a( Activity1, (List) Object3 );
        }
    }

    public static void a(Activity Activity1, List List2)
    {
        if( List2 != null && List2.size() != 0 )
        {
            DownloadManager DownloadManager3 = (DownloadManager) Activity1.getSystemService( "download" );
            Object Object4 = new HashMap();
            Cursor Cursor5 = DownloadManager3.query( new DownloadManager$Query() );
            Iterator Iterator6;

            if( Cursor5 != null )
            {
                while( Cursor5.moveToNext() )
                    ((Map) Object4).put( Cursor5.getString( Cursor5.getColumnIndex( "uri" ) ), Integer.valueOf( Cursor5.getPosition() ) );
            }
            Iterator6 = List2.iterator();
            while( Iterator6.hasNext() )
            {
                Game Game7 = (Game) Iterator6.next();
                String String8 = Game7.getAndroidLink();

                if( com.clilystudio.netbook.hpay100.a.a.j( (Context) Activity1, Game7.getAndroidPackageName() ) )
                {
                    Game7.setDownloadStatus( 32 );
                    Game7.setLocalFileUri( null );
                }
                else if( ((Map) Object4).containsKey( String8 ) )
                {
                    int int10;
                    String String11;

                    Cursor5.moveToPosition( ((Integer) ((Map) Object4).get( String8 )).intValue() );
                    int10 = Cursor5.getInt( Cursor5.getColumnIndex( "status" ) );
                    String11 = Cursor5.getString( Cursor5.getColumnIndex( "local_uri" ) );
                    Game7.setDownloadStatus( int10 );
                    Game7.setLocalFileUri( String11 );
                }
                else
                {
                    Game7.setDownloadStatus( 0 );
                    Game7.setLocalFileUri( null );
                }
            }
            if( Cursor5 != null )
            {
                Cursor5.close();
                return;
            }
        }
    }

    public final void a()
    {
        if( !com.clilystudio.netbook.hpay100.a.a.d() )
            e.a( b, "sd\u5361\u672A\u6302\u8F7D" );
        else
        {
            String String1 = c.getAndroidLink();

            if( String1 == null )
                e.a( b, "\u4E0B\u8F7D\u94FE\u63A5\u4E0D\u5B58\u5728" );
            else
            {
                long long3;

                b.sendBroadcast( new Intent( "update_game_item_status" ) );
                MyApplication.a().i().add( c.get_id() );
                long3 = a( Uri.parse( String1 ) );
                MyApplication.a().j().add( Long.valueOf( long3 ) );
                MyApplication.a().i().add( String1 );
            }
        }
    }
}
