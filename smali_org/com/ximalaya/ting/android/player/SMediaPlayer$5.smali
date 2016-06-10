.class Lcom/ximalaya/ting/android/player/SMediaPlayer$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# instance fields
.field final synthetic this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

.field private final synthetic val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;


# direct methods
.method constructor <init>(Lcom/ximalaya/ting/android/player/SMediaPlayer;Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$5;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    iput-object p2, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$5;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3

    .prologue
    .line 339
    sget-object v0, Lcom/ximalaya/ting/android/player/XMediaplayerJNI;->Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SMediaPlayer OnInfoListener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "extra:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 339
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 342
    packed-switch p2, :pswitch_data_0

    .line 353
    :goto_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$5;->val$listener:Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;

    iget-object v1, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$5;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    .line 354
    const/16 v2, 0xa

    .line 353
    invoke-interface {v0, v1, v2, p2}, Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;->onInfo(Lcom/ximalaya/ting/android/player/XMediaplayerImpl;II)Z

    move-result v0

    return v0

    .line 344
    :pswitch_0
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$5;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$8(Lcom/ximalaya/ting/android/player/SMediaPlayer;Z)V

    goto :goto_0

    .line 348
    :pswitch_1
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/SMediaPlayer$5;->this$0:Lcom/ximalaya/ting/android/player/SMediaPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/SMediaPlayer;->access$8(Lcom/ximalaya/ting/android/player/SMediaPlayer;Z)V

    goto :goto_0

    .line 342
    :pswitch_data_0
    .packed-switch 0x2bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
