.class Lcom/ximalaya/ting/android/player/SMediaPlayer$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

.field private final synthetic val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$3;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iput-object p2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$3;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$3;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$6(Lcom/ximalaya/ting/android/player/SMediaPlayer;I)V

    .line 290
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$3;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$3;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    invoke-interface {v0, v1}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;->onCompletion(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;)V

    .line 292
    return-void
.end method
