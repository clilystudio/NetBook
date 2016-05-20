.class public final Lcom/ushaqi/zhuishushenqi/util/as;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/ushaqi/zhuishushenqi/util/as;

.field private static b:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

.field private static c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/ushaqi/zhuishushenqi/util/as;

    invoke-direct {v0}, Lcom/ushaqi/zhuishushenqi/util/as;-><init>()V

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->a:Lcom/ushaqi/zhuishushenqi/util/as;

    .line 17
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->getInstance(Landroid/content/Context;)Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    move-result-object v0

    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ushaqi/zhuishushenqi/util/as;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcom/ushaqi/zhuishushenqi/util/as;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->a:Lcom/ushaqi/zhuishushenqi/util/as;

    return-object v0
.end method

.method public static a(I)V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->seekTo(I)V

    .line 81
    return-void
.end method

.method public static a(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->addPlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 93
    return-void
.end method

.method public static b()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;
    .locals 3

    .prologue
    .line 28
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->b:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->getInstanse()Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    move-result-object v0

    .line 30
    sput-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->b:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/MyApplication;->a()Lcom/ushaqi/zhuishushenqi/MyApplication;

    move-result-object v1

    const-string v2, "20680e0758e832acb8eb01342338cee5"

    invoke-virtual {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    :cond_0
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->b:Lcom/ximalaya/ting/android/opensdk/datatrasfer/CommonRequest;

    return-object v0
.end method

.method public static b(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0, p0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->removePlayerStatusListener(Lcom/ximalaya/ting/android/opensdk/player/service/IXmPlayerStatusListener;)V

    .line 97
    return-void
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->getCurrSound()Lcom/ximalaya/ting/android/opensdk/model/PlayableModel;

    move-result-object v0

    return-object v0
.end method

.method public static f()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->playPre()V

    .line 61
    return-void
.end method

.method public static g()V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->playNext()V

    .line 65
    return-void
.end method

.method public static h()V
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->pause()V

    .line 69
    return-void
.end method

.method public static i()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->release()V

    .line 73
    return-void
.end method

.method public static j()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->getPlayList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static k()V
    .locals 3

    .prologue
    .line 100
    sget-boolean v0, Lcom/ushaqi/zhuishushenqi/util/as;->d:Z

    if-nez v0, :cond_0

    .line 101
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    const/16 v1, 0x3e9

    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/e;->c()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->init(ILandroid/app/Notification;)V

    .line 102
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ushaqi/zhuishushenqi/util/as;->d:Z

    .line 103
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ximalaya/ting/android/opensdk/model/track/Track;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->k()V

    .line 51
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0, p1, p2}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->playList(Ljava/util/List;I)V

    .line 52
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/util/as;->k()V

    .line 41
    sget-object v0, Lcom/ushaqi/zhuishushenqi/util/as;->c:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->play()V

    .line 42
    return-void
.end method
