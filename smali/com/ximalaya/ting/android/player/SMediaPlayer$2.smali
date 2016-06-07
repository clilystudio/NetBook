.class Lcom/ximalaya/ting/android/player/SMediaPlayer$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

.field private final synthetic val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$2;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iput-object p2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$2;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$2;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$2;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    invoke-interface {v0, v1, p2}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;I)V

    .line 275
    return-void
.end method
