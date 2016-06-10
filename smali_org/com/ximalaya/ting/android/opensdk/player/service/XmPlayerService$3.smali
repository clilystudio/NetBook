.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

.field private final synthetic val$sound:Lcom/ximalaya/ting/android/opensdk/model/track/Track;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/model/track/Track;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$3;->val$sound:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    .line 907
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .prologue
    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;

    iget-object v1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService$3;->val$sound:Lcom/ximalaya/ting/android/opensdk/model/track/Track;

    const/4 v2, 0x1

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->playTrack(Lcom/ximalaya/ting/android/opensdk/model/track/Track;Z)V
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;->access$27(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerService;Lcom/ximalaya/ting/android/opensdk/model/track/Track;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
