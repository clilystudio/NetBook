
package com.clilystudio.netbook.download;

import android.os.Handler;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;

final class d extends Thread {

    d(a a1)
    {
        a = a1;
    }

    private a a;

    public final void run()
    {
        InputStream InputStream1 = null;
        FileOutputStream FileOutputStream2;

        try
        {
            FileOutputStream2 = new FileOutputStream( e.b );
        }
        catch( IOException IOException3 )
        {
            FileOutputStream2 = null;
            try
            {
                IOException3.printStackTrace();
            }
            finally
            {
                if( FileOutputStream2 != null )
                {
                    try
                    {
                        FileOutputStream2.close();
                    }
                    catch( IOException IOException5 )
                    {
                        IOException5.printStackTrace();
                        throw Object4;
                    }
                }
                if( InputStream1 != null )
                {
                    try
                    {
                        InputStream1.close();
                    }
                    catch( IOException IOException13 )
                    {
                        IOException13.printStackTrace();
                    }
                }
                throw Object4;
            }
            if( FileOutputStream2 != null )
            {
                try
                {
                    FileOutputStream2.close();
                }
                catch( IOException IOException6 )
                {
                    IOException6.printStackTrace();
                    return;
                }
            }
            if( InputStream1 != null )
            {
                try
                {
                    InputStream1.close();
                }
                catch( IOException IOException14 )
                {
                    IOException14.printStackTrace();
                    return;
                }
                return;
            }
        }
        finally
        {
            FileOutputStream2 = null;
            if( FileOutputStream2 != null )
                FileOutputStream2.close();
            if( InputStream1 != null )
                InputStream1.close();
            throw Object4;
        }
    }
}
