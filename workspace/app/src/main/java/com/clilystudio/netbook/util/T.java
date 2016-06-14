package com.clilystudio.netbook.util;

import android.content.Context;
import android.os.Handler;
import com.clilystudio.netbook.am;

import cn.sharesdk.framework.Platform;
import cn.sharesdk.framework.PlatformActionListener;
import cn.sharesdk.framework.ShareSDK;
import cn.sharesdk.onekeyshare.OnekeyShare;
import cn.sharesdk.sina.weibo.SinaWeibo;
import cn.sharesdk.tencent.qq.QQ;
import cn.sharesdk.tencent.qzone.QZone;
import cn.sharesdk.wechat.friends.Wechat$ShareParams;
import cn.sharesdk.wechat.moments.WechatMoments$ShareParams;

public final class T {
    private static Handler a = new Handler();

    public static String a(int n) {
        switch (n) {
            default: {
                return null;
            }
            case 0: {
                return "weibo";
            }
            case 1: {
                return "weixin_friend";
            }
            case 2: {
                return "weixin_moment";
            }
            case 3: {
                return "qq";
            }
            case 4:
        }
        return "qzone";
    }

    /*
     * Enabled aggressive block sorting
     */
    public static void a(Context context, String string, String string2, String string3, String string4, int n, PlatformActionListener platformActionListener) {
        if (context == null) {
            return;
        }
        String string5 = string == null ? "" : string;
        String string6 = string3 == null ? "" : string3;
        String string7 = string2 == null ? "" : string2;
        if (string4 == null) {
            string4 = "";
        }
        ShareSDK.initSDK(context);
        switch (n) {
            default: {
                return;
            }
            case 0: {
                String string8 = string7 + string6;
                String string9 = "\u300a" + string5 + "\u300b\uff1a" + string8;
                OnekeyShare onekeyShare = new OnekeyShare();
                onekeyShare.setText(string9);
                onekeyShare.setSilent(true);
                onekeyShare.setPlatform(SinaWeibo.NAME);
                onekeyShare.setCallback(platformActionListener);
                onekeyShare.show(context);
                return;
            }
            case 1: {
                Platform platform = ShareSDK.getPlatform(context, "Wechat");
                Wechat$ShareParams wechat$ShareParams = new Wechat$ShareParams();
                wechat$ShareParams.title = string5;
                wechat$ShareParams.text = string7;
                wechat$ShareParams.shareType = 4;
                wechat$ShareParams.url = string6;
                wechat$ShareParams.imageUrl = string4;
                platform.setPlatformActionListener(platformActionListener);
                platform.share(wechat$ShareParams);
                return;
            }
            case 2: {
                Platform platform = ShareSDK.getPlatform(context, "WechatMoments");
                WechatMoments$ShareParams wechatMoments$ShareParams = new WechatMoments$ShareParams();
                wechatMoments$ShareParams.title = string7;
                wechatMoments$ShareParams.shareType = 4;
                wechatMoments$ShareParams.url = string6;
                wechatMoments$ShareParams.imageUrl = string4;
                platform.setPlatformActionListener(platformActionListener);
                platform.share(wechatMoments$ShareParams);
                return;
            }
            case 3: {
                OnekeyShare onekeyShare = new OnekeyShare();
                if (string5 == null) {
                    string5 = "";
                }
                if (string6 == null) {
                    string6 = "";
                }
                if (string7 == null) {
                    string7 = "";
                }
                if (string4 == null) {
                    string4 = "";
                }
                onekeyShare.setTitle(string5);
                onekeyShare.setTitleUrl(string6);
                onekeyShare.setText(string7);
                onekeyShare.setImageUrl(string4);
                onekeyShare.setSilent(true);
                onekeyShare.setPlatform(QQ.NAME);
                onekeyShare.setCallback(platformActionListener);
                a.postDelayed(new U(platformActionListener), 5000);
                onekeyShare.show(context);
                return;
            }
            case 4: {
                OnekeyShare onekeyShare = new OnekeyShare();
                onekeyShare.setTitle(string5);
                onekeyShare.setTitleUrl(string6);
                onekeyShare.setText(string7);
                onekeyShare.setImageUrl(string4);
                onekeyShare.setSite("\u8ffd\u4e66\u795e\u5668");
                onekeyShare.setSiteUrl("http://www.zhuishushenqi.com");
                onekeyShare.setSilent(true);
                onekeyShare.setPlatform(QZone.NAME);
                onekeyShare.setCallback(platformActionListener);
                onekeyShare.show(context);
                return;
            }
            case 5:
        }
        am.a((Context) context, (String) string6);
        platformActionListener.onComplete(null, 0, null);
    }
}
