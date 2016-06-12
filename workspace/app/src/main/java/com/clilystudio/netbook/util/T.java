
package com.clilystudio.netbook.util;

import android.content.Context;
import android.os.Handler;
import android.support.design.widget.am;
import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.Platform$ShareParams;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.tencent.qzone.QZone;
import cn.sharesdk.wechat.friends.Wechat$ShareParams;
import cn.sharesdk.wechat.moments.WechatMoments$ShareParams;
import java.util.HashMap;

public final class T {

    private static Handler a = new Handler();

    public static String a(int int1)
    {
        switch( int1 )
        {
            default:
                return null;
            case 0:
                return "weibo";
            case 1:
                return "weixin_friend";
            case 2:
                return "weixin_moment";
            case 3:
                return "qq";
            case 4:
                return "qzone";
        }
    }

    public static void a(Context Context1, String String2, String String3, String String4, String String5, int int6, PlatformActionListener PlatformActionListener7)
    {
        if( Context1 == null )
            return;
        else
        {
            String String8;
            String String9;
            String String10;

            if( String2 == null )
                String8 = "";
            else
                String8 = String2;
            if( String4 == null )
                String9 = "";
            else
                String9 = String4;
            if( String3 == null )
                String10 = "";
            else
                String10 = String3;
            if( String5 == null )
                String5 = "";
            ShareSDK.initSDK( Context1 );
            switch( int6 )
            {
                default:
                    return;
                case 0:
                    String String18 = new StringBuilder().append( String10 ).append( String9 ).toString();
                    String String19 = new StringBuilder( "\u300A" ).append( String8 ).append( "\u300B\uFF1A" ).append( String18 ).toString();
                    OnekeyShare OnekeyShare20 = new OnekeyShare();

                    OnekeyShare20.setText( String19 );
                    OnekeyShare20.setSilent( true );
                    OnekeyShare20.setPlatform( SinaWeibo.NAME );
                    OnekeyShare20.setCallback( PlatformActionListener7 );
                    OnekeyShare20.show( Context1 );
                    return;
                case 1:
                    Platform Platform16 = ShareSDK.getPlatform( Context1, "Wechat" );
                    Object Object17 = new Wechat$ShareParams();

                    ((Wechat$ShareParams) Object17).title = String8;
                    ((Wechat$ShareParams) Object17).text = String10;
                    ((Wechat$ShareParams) Object17).shareType = 4;
                    ((Wechat$ShareParams) Object17).url = String9;
                    ((Wechat$ShareParams) Object17).imageUrl = String5;
                    Platform16.setPlatformActionListener( PlatformActionListener7 );
                    Platform16.share( (Platform$ShareParams) Object17 );
                    return;
                case 2:
                    Platform Platform14 = ShareSDK.getPlatform( Context1, "WechatMoments" );
                    Object Object15 = new WechatMoments$ShareParams();

                    ((WechatMoments$ShareParams) Object15).title = String10;
                    ((WechatMoments$ShareParams) Object15).shareType = 4;
                    ((WechatMoments$ShareParams) Object15).url = String9;
                    ((WechatMoments$ShareParams) Object15).imageUrl = String5;
                    Platform14.setPlatformActionListener( PlatformActionListener7 );
                    Platform14.share( (Platform$ShareParams) Object15 );
                    return;
                case 3:
                    OnekeyShare OnekeyShare12 = new OnekeyShare();

                    if( String8 == null )
                        String8 = "";
                    if( String9 == null )
                        String9 = "";
                    if( String10 == null )
                        String10 = "";
                    if( String5 == null )
                        String5 = "";
                    OnekeyShare12.setTitle( String8 );
                    OnekeyShare12.setTitleUrl( String9 );
                    OnekeyShare12.setText( String10 );
                    OnekeyShare12.setImageUrl( String5 );
                    OnekeyShare12.setSilent( true );
                    OnekeyShare12.setPlatform( QQ.NAME );
                    OnekeyShare12.setCallback( PlatformActionListener7 );
                    a.postDelayed( (Runnable) new U( PlatformActionListener7 ), 5000L );
                    OnekeyShare12.show( Context1 );
                    return;
                case 4:
                    OnekeyShare OnekeyShare11 = new OnekeyShare();

                    OnekeyShare11.setTitle( String8 );
                    OnekeyShare11.setTitleUrl( String9 );
                    OnekeyShare11.setText( String10 );
                    OnekeyShare11.setImageUrl( String5 );
                    OnekeyShare11.setSite( "\u8FFD\u4E66\u795E\u5668" );
                    OnekeyShare11.setSiteUrl( "http://www.zhuishushenqi.com" );
                    OnekeyShare11.setSilent( true );
                    OnekeyShare11.setPlatform( QZone.NAME );
                    OnekeyShare11.setCallback( PlatformActionListener7 );
                    OnekeyShare11.show( Context1 );
                    return;
                case 5:
                    am.a( Context1, String9 );
                    PlatformActionListener7.onComplete( null, 0, null );
                    return;
            }
        }
    }
}
