.class public final Lcom/ushaqi/zhuishushenqi/util/T;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/T;->a:Landroid/os/Handler;

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    .line 227
    packed-switch p0, :pswitch_data_0

    .line 244
    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    const-string v0, "weibo"

    goto :goto_0

    .line 232
    :pswitch_1
    const-string v0, "weixin_friend"

    goto :goto_0

    .line 235
    :pswitch_2
    const-string v0, "weixin_moment"

    goto :goto_0

    .line 238
    :pswitch_3
    const-string v0, "qq"

    goto :goto_0

    .line 241
    :pswitch_4
    const-string v0, "qzone"

    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcn/sharesdk/framework/PlatformActionListener;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x1

    .line 48
    if-nez p0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 51
    :cond_0
    if-nez p1, :cond_8

    .line 52
    const-string v2, ""

    .line 54
    :goto_1
    if-nez p3, :cond_7

    .line 55
    const-string v1, ""

    .line 57
    :goto_2
    if-nez p2, :cond_6

    .line 58
    const-string v0, ""

    .line 60
    :goto_3
    if-nez p4, :cond_1

    .line 61
    const-string p4, ""

    .line 63
    :cond_1
    invoke-static {p0}, Lcn/sharesdk/framework/ShareSDK;->initSDK(Landroid/content/Context;)V

    .line 64
    packed-switch p5, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1206
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "\u300a"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u300b\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1207
    new-instance v1, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 1210
    invoke-virtual {v1, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {v1, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 1216
    sget-object v0, Lcn/sharesdk/sina/weibo/SinaWeibo;->NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 1221
    invoke-virtual {v1, p6}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 1222
    invoke-virtual {v1, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    goto :goto_0

    .line 2167
    :pswitch_1
    const-string v3, "Wechat"

    invoke-static {p0, v3}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v3

    .line 2181
    new-instance v4, Lcn/sharesdk/wechat/friends/Wechat$ShareParams;

    invoke-direct {v4}, Lcn/sharesdk/wechat/friends/Wechat$ShareParams;-><init>()V

    .line 2182
    iput-object v2, v4, Lcn/sharesdk/wechat/friends/Wechat$ShareParams;->title:Ljava/lang/String;

    .line 2183
    iput-object v0, v4, Lcn/sharesdk/wechat/friends/Wechat$ShareParams;->text:Ljava/lang/String;

    .line 2184
    iput v5, v4, Lcn/sharesdk/wechat/friends/Wechat$ShareParams;->shareType:I

    .line 2185
    iput-object v1, v4, Lcn/sharesdk/wechat/friends/Wechat$ShareParams;->url:Ljava/lang/String;

    .line 2186
    iput-object p4, v4, Lcn/sharesdk/wechat/friends/Wechat$ShareParams;->imageUrl:Ljava/lang/String;

    .line 2169
    invoke-virtual {v3, p6}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 2170
    invoke-virtual {v3, v4}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto :goto_0

    .line 3174
    :pswitch_2
    const-string v2, "WechatMoments"

    invoke-static {p0, v2}, Lcn/sharesdk/framework/ShareSDK;->getPlatform(Landroid/content/Context;Ljava/lang/String;)Lcn/sharesdk/framework/Platform;

    move-result-object v2

    .line 3191
    new-instance v3, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;

    invoke-direct {v3}, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;-><init>()V

    .line 3192
    iput-object v0, v3, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;->title:Ljava/lang/String;

    .line 3193
    iput v5, v3, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;->shareType:I

    .line 3194
    iput-object v1, v3, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;->url:Ljava/lang/String;

    .line 3195
    iput-object p4, v3, Lcn/sharesdk/wechat/moments/WechatMoments$ShareParams;->imageUrl:Ljava/lang/String;

    .line 3176
    invoke-virtual {v2, p6}, Lcn/sharesdk/framework/Platform;->setPlatformActionListener(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 3177
    invoke-virtual {v2, v3}, Lcn/sharesdk/framework/Platform;->share(Lcn/sharesdk/framework/Platform$ShareParams;)V

    goto/16 :goto_0

    .line 4097
    :pswitch_3
    new-instance v3, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 4103
    if-nez v2, :cond_2

    .line 4104
    const-string v2, ""

    .line 4106
    :cond_2
    if-nez v1, :cond_3

    .line 4107
    const-string v1, ""

    .line 4109
    :cond_3
    if-nez v0, :cond_4

    .line 4110
    const-string v0, ""

    .line 4112
    :cond_4
    if-nez p4, :cond_5

    .line 4113
    const-string p4, ""

    .line 4117
    :cond_5
    invoke-virtual {v3, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 4119
    invoke-virtual {v3, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitleUrl(Ljava/lang/String;)V

    .line 4121
    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 4123
    invoke-virtual {v3, p4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 4125
    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 4126
    sget-object v0, Lcn/sharesdk/tencent/qq/QQ;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 4128
    invoke-virtual {v3, p6}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 4251
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/T;->a:Landroid/os/Handler;

    new-instance v1, Lcom/ushaqi/zhuishushenqi/util/U;

    invoke-direct {v1, p6}, Lcom/ushaqi/zhuishushenqi/util/U;-><init>(Lcn/sharesdk/framework/PlatformActionListener;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4131
    invoke-virtual {v3, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 5145
    :pswitch_4
    new-instance v3, Lcn/sharesdk/onekeyshare/OnekeyShare;

    invoke-direct {v3}, Lcn/sharesdk/onekeyshare/OnekeyShare;-><init>()V

    .line 5150
    invoke-virtual {v3, v2}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitle(Ljava/lang/String;)V

    .line 5151
    invoke-virtual {v3, v1}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setTitleUrl(Ljava/lang/String;)V

    .line 5152
    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setText(Ljava/lang/String;)V

    .line 5153
    invoke-virtual {v3, p4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setImageUrl(Ljava/lang/String;)V

    .line 5155
    const-string v0, "\u8ffd\u4e66\u795e\u5668"

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSite(Ljava/lang/String;)V

    .line 5156
    const-string v0, "http://www.zhuishushenqi.com"

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSiteUrl(Ljava/lang/String;)V

    .line 5158
    invoke-virtual {v3, v4}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setSilent(Z)V

    .line 5159
    sget-object v0, Lcn/sharesdk/tencent/qzone/QZone;->NAME:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setPlatform(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {v3, p6}, Lcn/sharesdk/onekeyshare/OnekeyShare;->setCallback(Lcn/sharesdk/framework/PlatformActionListener;)V

    .line 5162
    invoke-virtual {v3, p0}, Lcn/sharesdk/onekeyshare/OnekeyShare;->show(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 81
    :pswitch_5
    invoke-static {p0, v1}, Landroid/support/design/widget/am;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    invoke-interface {p6, v3, v0, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, p2

    goto/16 :goto_3

    :cond_7
    move-object v1, p3

    goto/16 :goto_2

    :cond_8
    move-object v2, p1

    goto/16 :goto_1

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
