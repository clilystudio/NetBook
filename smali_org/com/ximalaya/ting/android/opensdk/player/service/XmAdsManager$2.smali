.class Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

.field private final synthetic val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    iput-object p2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$2;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 326
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$1(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;Z)V

    .line 327
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$2;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$2;->val$tw:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;

    iget-object v2, v2, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$TaskWrapper;->callback:Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;

    # invokes: Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->exitPlayAds(ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z
    invoke-static {v0, v1, v2}, Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;->access$0(Lcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager;ZLcom/ximalaya/ting/android/opensdk/player/service/XmAdsManager$PlayAdsCallback;)Z

    .line 328
    return-void
.end method
