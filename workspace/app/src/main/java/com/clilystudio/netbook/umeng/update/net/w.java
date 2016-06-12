
package com.clilystudio.netbook.umeng.update.net;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.util.Collections;
import java.util.Date;
import java.util.Map;
import java.util.Stack;
import java.util.WeakHashMap;

public class w {
// Error: Internal #201: 
// The following method may not be correct.

    static 
    {
    }

    private static final String a = null;
    private static Thread b;

    public static File a(String String1, Context Context2, boolean[] boolean_1darray3)
    {
        String String6;
        String String9;
        File File12;

        if( u.a.a.a() )
        {
            File File4 = new File( new StringBuilder( String.valueOf( Environment.getExternalStorageDirectory().getCanonicalPath() ) ).append( "/download/.um" ).append( String1 ).toString() );

            File4.mkdirs();
            if( File4.exists() )
            {
                boolean_1darray3[0] = true;
                return File4;
            }
        }
        String6 = Context2.getCacheDir().getAbsolutePath();
        new File( String6 ).mkdir();
        a( String6, 505 );
        String9 = new StringBuilder( String.valueOf( String6 ) ).append( "/umdownload" ).toString();
        new File( String9 ).mkdir();
        a( String9, 505 );
        File12 = new File( String9 );
        boolean_1darray3[0] = false;
        return File12;
    }

    static void a(File File1, long long2)
    {
        if( File1 != null && File1.exists() && File1.canWrite() && File1.isDirectory() )
        {
            File[] File_1darray4 = File1.listFiles();
            int int5 = File_1darray4.length;
            int int6;

            for( int6 = 0; int6 < int5; ++int6 )
            {
                File File7 = File_1darray4[int6];

                if( !File7.isDirectory() && new Date().getTime() - File7.lastModified() > long2 )
                    File7.delete();
            }
        }
    }

    public static void a(File File1, long long2, long long4)
    {
        if( File1.exists() )
        {
            Object Object6 = File1.getCanonicalFile();
            long long7;

            if( Object6 == null || !((File) Object6).exists() || !((File) Object6).isDirectory() )
                long7 = 0L;
            else
            {
                Stack Stack11 = new Stack();
                long long18;

                Stack11.clear();
                Stack11.push( Object6 );
                for( long7 = 0L; !Stack11.isEmpty(); long7 = long18 )
                {
                    File[] File_1darray13 = ((File) Stack11.pop()).listFiles();
                    int int14 = File_1darray13.length;
                    long long15 = long7;
                    int int17 = 0;

                    long18 = long15;
                    while( int17 < int14 )
                    {
                        File File20 = File_1darray13[int17];

                        if( !File20.isDirectory() )
                            long18 += File20.length();
                        ++int17;
                    }
                }
            }
            if( long7 > long2 )
            {
                Thread Thread9;

                if( b == null )
                    b = new Thread( (Runnable) new x( File1, 259200000L ) );
                Thread9 = b;
                synchronized( Thread9 )
                {
                    b.start();
                }
            }
        }
        else if( !File1.mkdirs() )
        {
            u.a.b.b( a, new StringBuilder( "Failed to create directory" ).append( File1.getAbsolutePath() ).append( ". Check permission. Make sure WRITE_EXTERNAL_STORAGE is added in your Manifest.xml" ).toString() );
            return;
        }
    }

    static void a(Thread Thread1)
    {
        b = null;
    }
// Error: Internal #201: 
// The following method may not be correct.

    public static boolean a(String String1, int int2)
    {
    }

    public static boolean b(String String1, int int2)
    {
        return a( String1, 438 );
    }
}
