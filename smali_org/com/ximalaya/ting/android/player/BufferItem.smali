.class Lcom/ximalaya/ting/android/player/BufferItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "dl_mp3"


# instance fields
.field public bBuffer:Ljava/nio/ByteBuffer;

.field private dataSize:I

.field public errorCode:I

.field public fails:Z

.field private index:I

.field private lastChunk:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->index:I

    .line 25
    const-string v0, "dl_mp3"

    const-string v1, "======================BufferItem Constructor()"

    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 26
    iput-boolean v2, p0, Lcom/ximalaya/ting/android/player/BufferItem;->lastChunk:Z

    .line 27
    iput v2, p0, Lcom/ximalaya/ting/android/player/BufferItem;->dataSize:I

    .line 28
    return-void
.end method


# virtual methods
.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->bBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->bBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 53
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getDataSize()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->dataSize:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->index:I

    return v0
.end method

.method public isLastChunk()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->lastChunk:Z

    return v0
.end method

.method public setBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3

    .prologue
    .line 31
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->bBuffer:Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->dataSize:I

    .line 34
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======================BufferItem setBuffer0("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget v2, p0, Lcom/ximalaya/ting/android/player/BufferItem;->dataSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 34
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    :cond_0
    return-void
.end method

.method public setBuffer([B)V
    .locals 3

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->bBuffer:Ljava/nio/ByteBuffer;

    .line 42
    array-length v0, p1

    iput v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->dataSize:I

    .line 43
    const-string v0, "dl_mp3"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======================BufferItem setBuffer1("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    iget v2, p0, Lcom/ximalaya/ting/android/player/BufferItem;->dataSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lcom/ximalaya/ting/android/player/Logger;->log(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/ximalaya/ting/android/player/BufferItem;->index:I

    .line 74
    return-void
.end method

.method public setLastChunk()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ximalaya/ting/android/player/BufferItem;->lastChunk:Z

    .line 66
    return-void
.end method
