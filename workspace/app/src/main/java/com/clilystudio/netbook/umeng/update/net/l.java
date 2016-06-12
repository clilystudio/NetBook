
package com.clilystudio.netbook.umeng.update.net;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

final class l extends Handler {

    l(i i1)
    {
        a = i1;
    }

    private i a;

    public final void handleMessage(Message Message1)
    {
label_110:
        {
label_59:
            {
label_47:
                {
label_19:
                    {
                        try
                        {
                            u.a.b.c( i.b(), new StringBuilder( "DownloadAgent.handleMessage(" ).append( Message1.what ).append( "): " ).toString() );
                            switch( Message1.what )
                            {
                                case 4:
                                default:
                                    super.handleMessage( Message1 );
                                    break;
                                case 1:
                                    break label_19;
                                case 3:
                                    break label_47;
                                case 5:
                                    break label_59;
                                case 2:
                                    break label_110;
                            }
                        }
                        catch( Exception Exception2 )
                        {
                            Exception2.printStackTrace();
                            u.a.b.c( i.b(), new StringBuilder( "DownloadAgent.handleMessage(" ).append( Message1.what ).append( "): " ).append( Exception2.getMessage() ).toString() );
                            return;
                        }
                        return;
                    }
                    try
                    {
                        if( i.k( a ) == null )
                            return;
                        i.k( a ).d();
                    }
                    catch( Exception Exception5 )
                    {
                        Exception5.printStackTrace();
                        u.a.b.c( i.b(), new StringBuilder( "DownloadAgent.handleMessage(" ).append( Message1.what ).append( "): " ).append( Exception5.getMessage() ).toString() );
                        return;
                    }
                    return;
                }
                try
                {
                    if( i.k( a ) == null )
                        return;
                    i.k( a );
                }
                catch( Exception Exception6 )
                {
                    Exception6.printStackTrace();
                    u.a.b.c( i.b(), new StringBuilder( "DownloadAgent.handleMessage(" ).append( Message1.what ).append( "): " ).append( Exception6.getMessage() ).toString() );
                    return;
                }
                return;
            }
label_100:
            {
                try
                {
                    u u3;
                    int int4;

                    i.l( a ).unbindService( i.m( a ) );
                    if( i.k( a ) == null )
                        return;
                    if( Message1.arg1 != 1 && Message1.arg1 != 3 && Message1.arg1 != 5 )
                        break label_100;
                    u3 = i.k( a );
                    int4 = Message1.arg1;
                    u3.a( int4, Message1.getData().getString( "filename" ) );
                }
                catch( Exception Exception7 )
                {
                    Exception7.printStackTrace();
                    u.a.b.c( i.b(), new StringBuilder( "DownloadAgent.handleMessage(" ).append( Message1.what ).append( "): " ).append( Exception7.getMessage() ).toString() );
                    return;
                }
                return;
            }
            try
            {
                i.k( a ).a( 0, null );
                u.a.b.c( i.b(), "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): " );
            }
            catch( Exception Exception8 )
            {
                Exception8.printStackTrace();
                u.a.b.c( i.b(), new StringBuilder( "DownloadAgent.handleMessage(" ).append( Message1.what ).append( "): " ).append( Exception8.getMessage() ).toString() );
                return;
            }
            return;
        }
        try
        {
            i.k( a ).a( Message1.arg1 );
        }
        catch( Exception Exception9 )
        {
            Exception9.printStackTrace();
            u.a.b.c( i.b(), new StringBuilder( "DownloadAgent.handleMessage(" ).append( Message1.what ).append( "): " ).append( Exception9.getMessage() ).toString() );
            return;
        }
    }
}
