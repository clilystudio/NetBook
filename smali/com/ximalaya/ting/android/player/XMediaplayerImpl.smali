.class public interface abstract Lcom/ximalaya/ting/android/player/XMediaplayerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final COMPLETE:I = 0xb

.field public static final ERROR:I = 0x8

.field public static final IDLE:I = 0x0

.field public static final INFO:I = 0xa

.field public static final INITIALIZED:I = 0x1

.field public static final NOT_ARCH_SUPPORT:I = 0xc

.field public static final PAUSED:I = 0x5

.field public static final PLAYBACK_COMPLETED:I = 0x7

.field public static final PREPARED:I = 0x3

.field public static final PREPARING:I = 0x2

.field public static final RELEASED:I = 0x9

.field public static final STARTED:I = 0x4

.field public static final STOPPED:I = 0x6


# virtual methods
.method public abstract getAudioType()Lcom/ximalaya/ting/android/player/XMediaplayerJNI$AudioType;
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPlayState()I
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract isUseSystemPlayer()Z
.end method

.method public abstract pause()V
.end method

.method public abstract prepareAsync()V
.end method

.method public abstract release()V
.end method

.method public abstract removeProxy()V
.end method

.method public abstract reset()V
.end method

.method public abstract seekTo(I)V
.end method

.method public abstract setAudioStreamType(I)V
.end method

.method public abstract setDataSource(Ljava/io/FileDescriptor;Ljava/lang/String;)V
.end method

.method public abstract setDataSource(Ljava/lang/String;)V
.end method

.method public abstract setDownloadBufferSize(J)V
.end method

.method public abstract setOnBufferingUpdateListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnBufferingUpdateListener;)V
.end method

.method public abstract setOnCompletionListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnCompletionListener;)V
.end method

.method public abstract setOnErrorListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnErrorListener;)V
.end method

.method public abstract setOnInfoListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnInfoListener;)V
.end method

.method public abstract setOnPositionChangeListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPositionChangeListener;)V
.end method

.method public abstract setOnPreparedListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnPreparedListener;)V
.end method

.method public abstract setOnSeekCompleteListener(Lcom/ximalaya/ting/android/player/XMediaPlayer$OnSeekCompleteListener;)V
.end method

.method public abstract setProxy(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method public abstract setVolume(FF)V
.end method

.method public abstract setWakeMode(Landroid/content/Context;I)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
