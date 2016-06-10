.class Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    # getter for: Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->mState:I
    invoke-static {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->access$5(Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 439
    iget-object v0, p0, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl$3;->this$0:Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;

    invoke-virtual {v0}, Lcom/ximalaya/ting/android/opensdk/player/service/XmPlayerControl;->play()Z

    .line 441
    :cond_0
    return-void
.end method
