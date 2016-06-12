
package com.clilystudio.netbook.reader.dl;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.IBinder;
import android.support.design.widget.am;
import android.support.v4.content.LocalBroadcastManager;
import com.clilystudio.netbook.MyApplication;
import com.clilystudio.netbook.db.BookDlRecord;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.db.SourceRecord;
import com.clilystudio.netbook.model.ChapterLink;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class BookDownloadService extends Service {

    private String a;
    private String b;
    private int c;
    private int d;
    private int e;
    private int f;
    private ChapterLink[] g;
    private ArrayList h;
    private com.clilystudio.netbook.reader.f k;
    private int l;
    private int n;
    private boolean o;
    private Intent i = null;
    private boolean j = false;
    private String m = null;

    static String a(BookDownloadService BookDownloadService1, String String2)
    {
        BookDownloadService1.b = String2;
        return String2;
    }

    private void a()
    {
        List List1 = BookDlRecord.getAllPending();

        if( List1.size() > 0 )
        {
            BookDlRecord BookDlRecord2 = (BookDlRecord) List1.get( 0 );
            BookReadRecord BookReadRecord3;

            a = BookDlRecord2.getBookId();
            BookReadRecord3 = BookReadRecord.getOnShelf( a );
            if( BookReadRecord3 == null )
                g();
            else
            {
                a( BookDlRecord2, 5 );
                b = BookDlRecord2.getTocId();
                c = BookDlRecord2.getMode();
                d = BookDlRecord2.getStart();
                e = BookDlRecord2.getTotal();
                l = 0;
                f = 0;
                g = (ChapterLink[]) MyApplication.a().e().get( a );
                if( g != null && e > 0 )
                    b();
                else
                    a( BookReadRecord3 );
            }
        }
        else
            stopSelf();
    }

    private void a(int int1)
    {
        a( BookDlRecord.get( a ), int1 );
    }

    private static void a(BookDlRecord BookDlRecord1, int int2)
    {
        if( BookDlRecord1 != null )
        {
            BookDlRecord1.setStatus( int2 );
            BookDlRecord1.save();
        }
        com.clilystudio.netbook.event.i.a().c( new com.clilystudio.netbook.event.I() );
    }

    private void a(BookReadRecord BookReadRecord1)
    {
        k = new com.clilystudio.netbook.reader.f( BookReadRecord1 );
        if( c == -1 )
        {
            f f2 = new f( this, (byte) 0 );
            String[] String_1darray3 = new String[1];

            String_1darray3[0] = a;
            f2.b( String_1darray3 );
        }
        else
        {
            String String5;
            String String6;

            if( com.clilystudio.netbook.hpay100.a.a.h( c ) )
            {
                SourceRecord SourceRecord8;

                String6 = com.clilystudio.netbook.hpay100.a.a.g( c );
                SourceRecord8 = SourceRecord.get( a, String6 );
                if( SourceRecord8 == null || SourceRecord8.getSourceId() == null )
                {
                    f f9 = new f( this, (byte) 0 );
                    String[] String_1darray10 = new String[1];

                    String_1darray10[0] = a;
                    f9.b( String_1darray10 );
                    return;
                }
                else
                    String5 = SourceRecord8.getSourceId();
            }
            else
            {
                String5 = null;
                String6 = null;
            }
            b = com.clilystudio.netbook.hpay100.a.a.a( a, c, String5, b );
            k.a( b, String6, String5 );
            new g( this, (byte) 0 ).b( new Void[0] );
        }
    }

    static void a(BookDownloadService BookDownloadService1, int int2)
    {
        BookDownloadService1.a( 2 );
    }

    static void a(BookDownloadService BookDownloadService1, BookReadRecord BookReadRecord2)
    {
        BookDownloadService1.a( BookReadRecord2 );
    }

    static boolean a(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.o;
    }

    static boolean a(BookDownloadService BookDownloadService1, boolean boolean2)
    {
        BookDownloadService1.j = false;
        return false;
    }

    static ChapterLink[] a(BookDownloadService BookDownloadService1, ChapterLink[] ChapterLink_1darray2)
    {
        BookDownloadService1.g = ChapterLink_1darray2;
        return ChapterLink_1darray2;
    }

    static int b(BookDownloadService BookDownloadService1, int int2)
    {
        BookDownloadService1.n = int2;
        return int2;
    }

    static Intent b(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.i;
    }

    private void b()
    {
        boolean boolean1;
        String String2;

        k = new com.clilystudio.netbook.reader.f( c );
        boolean1 = com.clilystudio.netbook.hpay100.a.a.h( c );
        String2 = null;
        if( boolean1 )
        {
            String String4 = com.clilystudio.netbook.hpay100.a.a.g( c );
            SourceRecord SourceRecord5 = SourceRecord.get( a, String4 );

            String2 = null;
            if( SourceRecord5 != null )
            {
                String String6;

                String2 = SourceRecord5.getSourceId();
                String6 = SourceRecord5.getSogouMd();
                k.a( String2, String6 );
            }
        }
        b = com.clilystudio.netbook.hpay100.a.a.a( a, c, String2, b );
        k.b( com.clilystudio.netbook.util.I.c );
        k.a( com.clilystudio.netbook.util.I.a );
        k.a( com.clilystudio.netbook.util.I.g );
        i.putExtra( "SerDlStopFlag", 0 );
        h = com.clilystudio.netbook.hpay100.a.a.j( a, b );
        if( com.clilystudio.netbook.hpay100.a.a.e() <= (long) (10 * e << 1) )
        {
            com.clilystudio.netbook.util.e.a( (Context) this, "SD\u5361\u5269\u4F59\u5BB9\u91CF\u4E0D\u8DB3\uFF0C\u8BF7\u51CF\u5C11\u7F13\u5B58\u6570\u76EE\u6216\u589E\u52A0\u5B58\u50A8" );
            stopSelf();
        }
        else
        {
            a( 2 );
            com.clilystudio.netbook.event.i.a().c( new com.clilystudio.netbook.event.d( a, 2 ) );
            c();
        }
    }

    static boolean b(BookDownloadService BookDownloadService1, boolean boolean2)
    {
        BookDownloadService1.o = false;
        return false;
    }

    static int c(BookDownloadService BookDownloadService1, int int2)
    {
        BookDownloadService1.l = int2;
        return int2;
    }

    private void c()
    {
        if( !j && g != null )
        {
            int int1 = d + f;

            if( int1 < g.length && f <= e )
            {
                ChapterLink ChapterLink2 = g[int1];
                boolean boolean3 = ChapterLink2.getUnreadble();
                String String4 = am.e( ChapterLink2.getLink() );

                while( boolean3 || h.contains( String4 ) )
                {
                    f = 1 + f;
                    int1 = d + f;
                    if( int1 < g.length )
                    {
                        ChapterLink2 = g[int1];
                        boolean3 = ChapterLink2.getUnreadble();
                        String4 = am.e( ChapterLink2.getLink() );
                    }
                    else
                    {
                        e();
                        return;
                    }
                }
                new e( this, ChapterLink2, int1 ).b( new Void[0] );
            }
            else
                e();
        }
    }

    static void c(BookDownloadService BookDownloadService1)
    {
        BookDownloadService1.h();
    }

    static int d(BookDownloadService BookDownloadService1, int int2)
    {
        BookDownloadService1.c = 5;
        return 5;
    }

    static String d(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.a;
    }

    private void d()
    {
        i.putExtra( "SerDlStopFlag", -2 );
        h();
        a( 3 );
        a();
        com.clilystudio.netbook.event.i.a().c( new com.clilystudio.netbook.event.I() );
    }

    static int e(BookDownloadService BookDownloadService1, int int2)
    {
        BookDownloadService1.e = int2;
        return int2;
    }

    private void e()
    {
        i.putExtra( "SerDlStopFlag", -1 );
        h();
        com.clilystudio.netbook.event.i.a().c( new com.clilystudio.netbook.event.d( a, 4 ) );
        f();
        a();
    }

    static void e(BookDownloadService BookDownloadService1)
    {
        BookDownloadService1.c();
    }

    static com.clilystudio.netbook.reader.f f(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.k;
    }

    private void f()
    {
        MyApplication.a().e().remove( a );
        MyApplication.a().f().remove( a );
        BookDlRecord.delete( a );
    }

    static void f(BookDownloadService BookDownloadService1, int int2)
    {
        BookDlRecord BookDlRecord3 = BookDlRecord.get( BookDownloadService1.a );

        if( BookDlRecord3 != null )
        {
            BookDlRecord3.setTotal( int2 );
            BookDlRecord3.save();
        }
    }

    static int g(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.f;
    }

    private void g()
    {
        f();
        a();
    }

    static int h(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.e;
    }

    private void h()
    {
        LocalBroadcastManager.getInstance( getApplicationContext() ).sendBroadcast( i );
    }

    static int i(BookDownloadService BookDownloadService1)
    {
        int int2 = BookDownloadService1.f;

        BookDownloadService1.f = int2 + 1;
        return int2;
    }

    static int j(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.n;
    }

    static void k(BookDownloadService BookDownloadService1)
    {
        BookDownloadService1.i.putExtra( "SerDlStopFlag", -2 );
        BookDownloadService1.h();
        BookDownloadService1.a( 3 );
        BookDownloadService1.o = true;
    }

    static void l(BookDownloadService BookDownloadService1)
    {
        if( BookDownloadService1.a != null && !BookDownloadService1.a.equals( BookDownloadService1.m ) )
        {
            BookReadRecord BookReadRecord2 = BookReadRecord.get( BookDownloadService1.a );

            if( BookReadRecord2 != null )
            {
                Object Object3 = com.clilystudio.netbook.hpay100.a.a.g( BookReadRecord2.getReadMode() );
                String String4 = BookReadRecord2.getDownloadedSource();

                if( String4 == null || !String4.contains( (CharSequence) Object3 ) )
                {
                    BookReadRecord2.setDownloadedSource( new StringBuilder().append( String4 ).append( (String) Object3 ).toString() );
                    BookReadRecord2.save();
                }
                BookDownloadService1.m = BookDownloadService1.a;
            }
        }
    }

    static String m(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.b;
    }

    static int n(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.l;
    }

    static void o(BookDownloadService BookDownloadService1)
    {
        BookDownloadService1.g();
    }

    static ChapterLink[] p(BookDownloadService BookDownloadService1)
    {
        return BookDownloadService1.g;
    }

    static void q(BookDownloadService BookDownloadService1)
    {
        BookDownloadService1.b();
    }

    static void r(BookDownloadService BookDownloadService1)
    {
        BookDownloadService1.d();
    }

    public IBinder onBind(Intent Intent1)
    {
        return null;
    }

    public void onCreate()
    {
        IntentFilter IntentFilter1;

        super.onCreate();
        com.clilystudio.netbook.event.i.a().a( this );
        i = new Intent( "com.clilystudio.netbook.dlReceiver" );
        IntentFilter1 = new IntentFilter();
        IntentFilter1.addAction( "android.net.wifi.supplicant.STATE_CHANGE" );
        IntentFilter1.addAction( "android.net.wifi.RSSI_CHANGED" );
        IntentFilter1.addAction( "android.net.wifi.STATE_CHANGE" );
        IntentFilter1.addAction( "android.net.wifi.supplicant.CONNECTION_CHANGE" );
        IntentFilter1.addAction( "android.net.wifi.WIFI_STATE_CHANGED" );
        IntentFilter1.addAction( "android.net.wifi.PICK_WIFI_NETWORK" );
        IntentFilter1.addAction( "android.net.conn.CONNECTIVITY_CHANGE" );
        IntentFilter1.setPriority( 1000 );
        registerReceiver( (BroadcastReceiver) new BookDownloadService$MyNetworkMonitor( this ), IntentFilter1 );
        a();
    }

    public void onDestroy()
    {
        j = true;
        com.clilystudio.netbook.event.i.a().b( this );
        super.onDestroy();
    }

    public void onDownloadStatus(com.clilystudio.netbook.event.d d1)
    {
        switch( d1.a() )
        {
            default:
                return;
            case 3:
                d();
                return;
        }
    }

    public int onStartCommand(Intent Intent1, int int2, int int3)
    {
        IntentFilter IntentFilter4 = new IntentFilter();

        IntentFilter4.addAction( "android.net.wifi.supplicant.STATE_CHANGE" );
        IntentFilter4.addAction( "android.net.wifi.RSSI_CHANGED" );
        IntentFilter4.addAction( "android.net.wifi.STATE_CHANGE" );
        IntentFilter4.addAction( "android.net.wifi.supplicant.CONNECTION_CHANGE" );
        IntentFilter4.addAction( "android.net.wifi.WIFI_STATE_CHANGED" );
        IntentFilter4.addAction( "android.net.wifi.PICK_WIFI_NETWORK" );
        IntentFilter4.addAction( "android.net.conn.CONNECTIVITY_CHANGE" );
        IntentFilter4.setPriority( 1000 );
        registerReceiver( (BroadcastReceiver) new BookDownloadService$MyNetworkMonitor( this ), IntentFilter4 );
        return super.onStartCommand( Intent1, int2, int3 );
    }
}
