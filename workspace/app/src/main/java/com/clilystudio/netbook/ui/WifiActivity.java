
package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Bundle;
import android.text.format.Formatter;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class WifiActivity extends BaseActivity {

    private com.koushikdutta.async.http.server.a b;
    private TextView c;
    private TextView e;
    private List a = new ArrayList();

    static void a(WifiActivity WifiActivity1, File File2)
    {
        try
        {
            FileOutputStream FileOutputStream3 = new FileOutputStream( File2, true );

            FileOutputStream3.write( new byte[0] );
            FileOutputStream3.close();
        }
        catch( FileNotFoundException FileNotFoundException5 )
        {
            FileNotFoundException5.printStackTrace();
            return;
        }
        catch( IOException IOException4 )
        {
            IOException4.printStackTrace();
            return;
        }
    }

    static void a(WifiActivity WifiActivity1, File File2, byte[] byte_1darray3)
    {
        try
        {
            FileOutputStream FileOutputStream4 = new FileOutputStream( File2, true );

            FileOutputStream4.write( byte_1darray3 );
            FileOutputStream4.close();
        }
        catch( FileNotFoundException FileNotFoundException6 )
        {
            FileNotFoundException6.printStackTrace();
            return;
        }
        catch( IOException IOException5 )
        {
            IOException5.printStackTrace();
            return;
        }
    }

    protected void onCreate(Bundle Bundle1)
    {
        Object Object2;
        Iterator Iterator4;

        super.onCreate( Bundle1 );
        setContentView( 2130903144 );
        b( "Wi-Fi\u4F20\u4E66" );
        b = new com.koushikdutta.async.http.server.a();
        c = (TextView) findViewById( 2131493260 );
        e = (TextView) findViewById( 2131493261 );
        a.clear();
        Object2 = com.clilystudio.netbook.hpay100.a.a.f();
        a.addAll( (Collection) Object2 );
        Iterator4 = a.iterator();
        while( Iterator4.hasNext() )
        {
            BookFile BookFile5 = (BookFile) Iterator4.next();

            b.a( new StringBuilder( "/files/" ).append( BookFile5.getName() ).toString(), (com.koushikdutta.async.http.server.r) new cm( this, BookFile5 ) );
        }
    }

    public void onPause()
    {
        super.onPause();
        b.a();
    }

    public void onResume()
    {
        String[] String_1darray1;
        String[] String_1darray2;
        int int3;

        super.onResume();
        String_1darray1 = new String[] { null };
        String_1darray2 = new String[] { "wifi_transfer_v1", "wifi_transfer_v1/scripts" };
        int3 = 0;
        while( int3 < 2 )
        {
            try
            {
                String String8 = String_1darray2[int3];
                String[] String_1darray9 = getAssets().list( String8 );
                int int10 = String_1darray9.length;
            }
            catch( IOException IOException7 )
            {
                IOException7.printStackTrace();
                break;
            }
            break;
        }
        b.a( "/", (com.koushikdutta.async.http.server.r) new co( this ) );
        b.a( "/files", (com.koushikdutta.async.http.server.r) new cp( this ) );
        b.b( "/send_file_name", (com.koushikdutta.async.http.server.r) new cq( this, String_1darray1 ) );
        b.b( "/delete_file", (com.koushikdutta.async.http.server.r) new cr( this ) );
        b.b( "/files", (com.koushikdutta.async.http.server.r) new cs( this, String_1darray1 ) );
        b.a( 5000 );
        if( com.clilystudio.netbook.hpay100.a.a.r( (Context) this ) != 1 )
        {
            c.setText( (CharSequence) "\u672A\u8FDE\u63A5\u5230 Wi-Fi" );
            e.setText( (CharSequence) "\u672A\u8FDE\u63A5" );
        }
        else
        {
            WifiInfo WifiInfo5;

            c.setText( (CharSequence) new StringBuilder( "http://" ).append( Formatter.formatIpAddress( ((WifiManager) ((Context) this).getSystemService( "wifi" )).getConnectionInfo().getIpAddress() ) ).append( ":5000" ).toString() );
            WifiInfo5 = ((WifiManager) getSystemService( "wifi" )).getConnectionInfo();
            if( WifiInfo5 != null )
            {
                Object Object6 = WifiInfo5.getSSID();

                if( Object6 != null && ((String) Object6).length() >= 3 && ((String) Object6).contains( (CharSequence) "\"" ) )
                    Object6 = ((String) Object6).substring( 1, -1 + ((String) Object6).length() );
                e.setText( (CharSequence) Object6 );
                return;
            }
        }
    }

    protected void onStop()
    {
        super.onStop();
        i.a().c( new A() );
    }
}
