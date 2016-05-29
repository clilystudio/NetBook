package com.clilystudio.app.netbook.util;

import android.content.Context;
import android.os.Handler;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.tencent.qzone.QZone;
import cn.sharesdk.wechat.moments.WechatMoments.ShareParams;

public final class T {
    private static Handler a = new Handler();

    public static String a(int paramInt) {
        switch (paramInt) {
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
        }
        return "qzone";
    }

    public static void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt, PlatformActionListener paramPlatformActionListener) {
        if (paramContext == null)
            return;
        if (paramString1 == null) ;
        for (String str1 = ""; ; str1 = paramString1) {
            if (paramString3 == null) ;
            for (String str2 = ""; ; str2 = paramString3) {
                if (paramString2 == null) ;
                for (String str3 = ""; ; str3 = paramString2) {
                    if (paramString4 == null)
                        paramString4 = "";
                    ShareSDK.initSDK(paramContext);
                    switch (paramInt) {
                        default:
                            return;
                        case 0:
                            String str4 = str3 + str2;
                            String str5 = "《" + str1 + "》：" + str4;
                            OnekeyShare localOnekeyShare3 = new OnekeyShare();
                            localOnekeyShare3.setText(str5);
                            localOnekeyShare3.setSilent(true);
                            localOnekeyShare3.setPlatform(SinaWeibo.NAME);
                            localOnekeyShare3.setCallback(paramPlatformActionListener);
                            localOnekeyShare3.show(paramContext);
                            return;
                        case 1:
                            Platform localPlatform2 = ShareSDK.getPlatform(paramContext, "Wechat");
                            Wechat.ShareParams localShareParams1 = new Wechat.ShareParams();
                            localShareParams1.title = str1;
                            localShareParams1.text = str3;
                            localShareParams1.shareType = 4;
                            localShareParams1.url = str2;
                            localShareParams1.imageUrl = paramString4;
                            localPlatform2.setPlatformActionListener(paramPlatformActionListener);
                            localPlatform2.share(localShareParams1);
                            return;
                        case 2:
                            Platform localPlatform1 = ShareSDK.getPlatform(paramContext, "WechatMoments");
                            WechatMoments.ShareParams localShareParams = new WechatMoments.ShareParams();
                            localShareParams.title = str3;
                            localShareParams.shareType = 4;
                            localShareParams.url = str2;
                            localShareParams.imageUrl = paramString4;
                            localPlatform1.setPlatformActionListener(paramPlatformActionListener);
                            localPlatform1.share(localShareParams);
                            return;
                        case 3:
                            OnekeyShare localOnekeyShare2 = new OnekeyShare();
                            if (str1 == null)
                                str1 = "";
                            if (str2 == null)
                                str2 = "";
                            if (str3 == null)
                                str3 = "";
                            if (paramString4 == null)
                                paramString4 = "";
                            localOnekeyShare2.setTitle(str1);
                            localOnekeyShare2.setTitleUrl(str2);
                            localOnekeyShare2.setText(str3);
                            localOnekeyShare2.setImageUrl(paramString4);
                            localOnekeyShare2.setSilent(true);
                            localOnekeyShare2.setPlatform(QQ.NAME);
                            localOnekeyShare2.setCallback(paramPlatformActionListener);
                            a.postDelayed(new U(paramPlatformActionListener), 5000L);
                            localOnekeyShare2.show(paramContext);
                            return;
                        case 4:
                            OnekeyShare localOnekeyShare1 = new OnekeyShare();
                            localOnekeyShare1.setTitle(str1);
                            localOnekeyShare1.setTitleUrl(str2);
                            localOnekeyShare1.setText(str3);
                            localOnekeyShare1.setImageUrl(paramString4);
                            localOnekeyShare1.setSite("追书神器");
                            localOnekeyShare1.setSiteUrl("http://www.zhuishushenqi.com");
                            localOnekeyShare1.setSilent(true);
                            localOnekeyShare1.setPlatform(QZone.NAME);
                            localOnekeyShare1.setCallback(paramPlatformActionListener);
                            localOnekeyShare1.show(paramContext);
                            return;
                        case 5:
                    }
                    am_CommonUtils.a_copyTextToClipboard(paramContext, str2);
                    paramPlatformActionListener.onComplete(null, 0, null);
                    return;
                }
            }
        }
    }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.T
 * JD-Core Version:    0.6.2
 */