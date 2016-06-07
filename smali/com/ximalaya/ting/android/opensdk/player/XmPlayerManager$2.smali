.class Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$2;
.super Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    .line 171
    invoke-direct {p0}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDownloadPlayPath(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$10(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->mIXmGetDownloadPlayPathCallback:Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;->access$10(Lcom/ximalaya/ting/android/opensdk/player/XmPlayerManager;)Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;

    move-result-object v0

    .line 181
    invoke-interface {v0, p1}, Lcom/ximalaya/ting/android/opensdk/player/service/IXmGetDownloadPlayPathCallback;->getDownloadPlayPath(Lcom/ximalaya/ting/android/opensdk/model/track/Track;)Ljava/lang/String;

    move-result-object v0

    .line 184
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
