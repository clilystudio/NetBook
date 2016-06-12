
package com.clilystudio.netbook.umeng.update.net;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.clilystudio.netbook.umeng.update.util.DeltaUpdate;
import java.io.File;

final class a extends Handler {

    a(DownloadingService DownloadingService1)
    {
        a = DownloadingService1;
    }

    private DownloadingService a;

    public final void handleMessage(Message Message1)
    {
        k k12;
        int int13;
        PendingIntent PendingIntent20;
        Notification Notification22;
        Notification Notification29;

label_186:
        switch( Message1.what )
        {
            default:
                return;
            case 5:
                String String15;
                Intent Intent17;
                Notification Notification21;
                boolean boolean24;
                String String27;
                Object[] Object_1darray28;

                k12 = (k) Message1.obj;
                int13 = Message1.arg2;
                try
                {
                    String15 = Message1.getData().getString( "filename" );
                    w.a( String15, 39 );
                    u.a.b.c( DownloadingService.a(), "Cancel old notification...." );
                    Intent17 = new Intent( "android.intent.action.VIEW" );
                    Intent17.addFlags( 268435456 );
                    Intent17.setDataAndType( Uri.fromFile( new File( String15 ) ), "application/vnd.android.package-archive" );
                    PendingIntent20 = PendingIntent.getActivity( DownloadingService.b( a ), 0, Intent17, 134217728 );
                    if( !k12.h )
                        break label_186;
                    Notification21 = new Notification( 17301634, (CharSequence) DownloadingService.b( a ).getString( com.alipay.sdk.b.b.k( DownloadingService.b( a ) ) ), System.currentTimeMillis() );
                    Notification21.setLatestEventInfo( DownloadingService.b( a ), (CharSequence) k12.b, (CharSequence) DownloadingService.b( a ).getString( com.alipay.sdk.b.b.k( DownloadingService.b( a ) ) ), PendingIntent20 );
                }
                catch( Exception Exception14 )
                {
                    u.a.b.b( DownloadingService.a(), new StringBuilder( "can not install. " ).append( Exception14.getMessage() ).toString() );
                    DownloadingService.c( a ).cancel( int13 + 1 );
                    return;
                }
                Notification22 = Notification21;
                try
                {
                    String String25;
                    Object[] Object_1darray26;

                    Notification22.flags = 16;
                    DownloadingService.a( a, (NotificationManager) a.getSystemService( "notification" ) );
                    DownloadingService.c( a ).notify( int13 + 1, Notification22 );
                    u.a.b.c( DownloadingService.a(), "Show new  notification...." );
                    DownloadingService.a( a );
                    boolean24 = p.a( DownloadingService.b( a ) );
                    String25 = DownloadingService.a();
                    Object_1darray26 = new Object[1];
                    Object_1darray26[0] = Boolean.valueOf( boolean24 );
                    u.a.b.c( String25, String.format( "isAppOnForeground = %1$B", Object_1darray26 ) );
                }
                catch( Exception Exception30 )
                {
                    u.a.b.b( DownloadingService.a(), new StringBuilder( "can not install. " ).append( Exception30.getMessage() ).toString() );
                    DownloadingService.c( a ).cancel( int13 + 1 );
                    return;
                }
                if( boolean24 && !k12.h )
                {
                    DownloadingService.c( a ).cancel( int13 + 1 );
                    DownloadingService.b( a ).startActivity( Intent17 );
                }
                String27 = DownloadingService.a();
                Object_1darray28 = new Object[2];
                Object_1darray28[0] = k12.b;
                Object_1darray28[1] = String15;
                u.a.b.a( String27, String.format( "%1$10s downloaded. Saved to: %2$s", Object_1darray28 ) );
                return;
            case 6:
                k k2 = (k) Message1.obj;
                int int3 = Message1.arg2;
                String String4 = Message1.getData().getString( "filename" );
                Notification Notification5;
                PendingIntent PendingIntent6;
                String String7;
                String String8;
                Object Object9;

                DownloadingService.c( a ).cancel( int3 );
                Notification5 = new Notification( 17301633, (CharSequence) DownloadingService.b( a ).getString( com.alipay.sdk.b.b.l( DownloadingService.b( a ) ) ), System.currentTimeMillis() );
                PendingIntent6 = PendingIntent.getActivity( DownloadingService.b( a ), 0, new Intent(), 134217728 );
                Notification5.setLatestEventInfo( DownloadingService.b( a ), (CharSequence) u.a.a.h( DownloadingService.b( a ) ), (CharSequence) DownloadingService.b( a ).getString( com.alipay.sdk.b.b.l( DownloadingService.b( a ) ) ), PendingIntent6 );
                DownloadingService.c( a ).notify( int3 + 1, Notification5 );
                String7 = String4.replace( (CharSequence) ".patch", (CharSequence) ".apk" );
                String8 = DeltaUpdate.a( (Context) a );
                Object9 = DownloadingService.a( a );
                Object9.getClass();
                new t( (p) Object9, DownloadingService.b( a ), int3, k2, String7 ).execute( new String[] { String8, String7, String4 } );
                return;
        }
        try
        {
            Notification29 = new Notification( 17301634, (CharSequence) DownloadingService.b( a ).getString( com.alipay.sdk.b.b.i( DownloadingService.b( a ) ) ), System.currentTimeMillis() );
            Notification29.setLatestEventInfo( DownloadingService.b( a ), (CharSequence) k12.b, (CharSequence) DownloadingService.b( a ).getString( com.alipay.sdk.b.b.i( DownloadingService.b( a ) ) ), PendingIntent20 );
        }
        catch( Exception Exception31 )
        {
            u.a.b.b( DownloadingService.a(), new StringBuilder( "can not install. " ).append( Exception31.getMessage() ).toString() );
            DownloadingService.c( a ).cancel( int13 + 1 );
            return;
        }
        Notification22 = Notification29;
    }
}
