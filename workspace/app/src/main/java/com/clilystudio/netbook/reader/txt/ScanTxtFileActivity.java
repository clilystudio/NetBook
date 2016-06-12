
package com.clilystudio.netbook.reader.txt;

import android.app.Activity;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.clilystudio.netbook.db.BookFile;
import com.clilystudio.netbook.event.A;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.TxtFileObject;
import com.clilystudio.netbook.ui.BaseActivity;
import com.clilystudio.netbook.ui.aa;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ScanTxtFileActivity extends BaseActivity {

    private R a;
    private int c;
    TextView mEmpty;
    ListView mList;
    ProgressBar mPbLoading;
    TextView mStatus;
    private List b = new ArrayList();
    private List e = new ArrayList();
    private boolean f = true;

    static R a(ScanTxtFileActivity ScanTxtFileActivity1)
    {
        return ScanTxtFileActivity1.a;
    }

    static List a(ScanTxtFileActivity ScanTxtFileActivity1, List List2)
    {
        ScanTxtFileActivity1.e = List2;
        return List2;
    }

    static void a(ScanTxtFileActivity ScanTxtFileActivity1, int int2)
    {
        ScanTxtFileActivity1.mStatus.setText( (CharSequence) new StringBuilder( "\u626B\u63CF\u5230" ).append( int2 ).append( "\u4E2Atxt\u6587\u4EF6" ).toString() );
    }

    private void a(File File1, Stack Stack2)
    {
        if( File1 != null && File1.isDirectory() )
        {
            Object[] Object_1darray3 = File1.listFiles();

            if( Object_1darray3 != null )
            {
                int int4 = Object_1darray3.length;
                int int5;

                for( int5 = 0; int5 < int4; ++int5 )
                {
                    Object Object6 = Object_1darray3[int5];

                    if( !((File) Object6).getName().startsWith( "." ) )
                    {
                        if( ((File) Object6).isDirectory() && ((File) Object6).listFiles() != null )
                            Stack2.push( Object6 );
                        else
                        {
                            int int7 = ((File) Object6).getName().lastIndexOf( "." );
                            String String8 = ((File) Object6).getName();
                            String String9;
                            int int10;
                            int int11;

                            if( int7 == -1 )
                                int7 = 0;
                            String9 = String8.substring( int7 );
                            if( (".txt".equals( String9 ) || ".TXT".equals( String9 )) && ((File) Object6).length() > 300L )
                                int10 = 1;
                            else
                                int10 = 0;
label_85:
                            {
                                if( int10 != 0 )
                                {
                                    Object Object15 = ((File) Object6).getName();
                                    int int17;

                                    if( Object15 == null )
                                        int17 = 1;
                                    else
                                    {
                                        String String16 = ((String) Object15).toLowerCase();

                                        if( String16.contains( (CharSequence) "log" ) || String16.contains( (CharSequence) "debug" ) || String16.contains( (CharSequence) "jason" ) || String16.contains( (CharSequence) "sig" ) || Pattern.compile( "^.*[0-9]+(-|/| )?[0-9]+(-|/| )?[0-9]+.*$" ).matcher( (CharSequence) Object15 ).matches() )
                                            int17 = 1;
                                        else
                                            int17 = 0;
                                    }
                                    if( int17 == 0 )
                                    {
                                        int11 = 1;
                                        break label_85;
                                    }
                                }
                                int11 = 0;
                            }
                            if( int11 != 0 )
                            {
                                Iterator Iterator12 = e.iterator();
                                int int13;

label_104:
                                {
                                    while( Iterator12.hasNext() )
                                    {
                                        if( !((BookFile) Iterator12.next()).getFilePath().equals( ((File) Object6).getPath() ) )
                                            continue;
                                        int13 = 1;
                                        break label_104;
                                    }
                                    int13 = 0;
                                }
                                if( int13 == 0 )
                                {
                                    b.add( new T( this, (File) Object6, (byte) 0 ) );
                                    Collections.sort( b, (Comparator) new O( this ) );
                                    runOnUiThread( (Runnable) new P( this ) );
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    static boolean a(ScanTxtFileActivity ScanTxtFileActivity1, boolean boolean2)
    {
        ScanTxtFileActivity1.f = boolean2;
        return boolean2;
    }

    static int b(ScanTxtFileActivity ScanTxtFileActivity1, int int2)
    {
        ScanTxtFileActivity1.c = 0;
        return 0;
    }

    static List b(ScanTxtFileActivity ScanTxtFileActivity1)
    {
        return ScanTxtFileActivity1.b;
    }

    static boolean c(ScanTxtFileActivity ScanTxtFileActivity1)
    {
        return ScanTxtFileActivity1.f;
    }

    public final void b()
    {
        File File1 = new File( "/sdcard" );
        Stack Stack2 = new Stack();

        Stack2.push( File1 );
        while( !Stack2.isEmpty() && c != 1 )
            a( (File) Stack2.pop(), Stack2 );
    }

    protected void onCreate(Bundle Bundle1)
    {
        super.onCreate( Bundle1 );
        setContentView( 2130903126 );
        ButterKnife.inject( (Activity) this );
        a = new R( this, getLayoutInflater() );
        mList.setAdapter( (ListAdapter) a );
        mList.setOnItemClickListener( (AdapterView$OnItemClickListener) a );
        a( "\u672C\u5730\u4E66\u7C4D", "\u5168\u9009", (aa) new N( this ) );
    }

    public void onImport(View View1)
    {
        List List2 = R.b( a );

        if( List2.size() == 0 )
            com.clilystudio.netbook.util.e.a( (Activity) this, "\u8BF7\u5148\u9009\u62E9\u5BFC\u5165\u7684\u4E66\u7C4D" );
        else
        {
            Iterator Iterator3 = List2.iterator();

            while( Iterator3.hasNext() )
                ((BookFile) Iterator3.next()).setUpdated( new Date() );
            TxtFileObject.saveTxtFiles( List2 );
            i.a().c( new A() );
            finish();
        }
    }

    public void onResume()
    {
        super.onResume();
        b = (List) new ArrayList();
        new Q( this ).b( new Void[0] );
    }

    protected void onStop()
    {
        super.onStop();
        c = 1;
    }
}
