.class public Lcom/ximalaya/ting/android/player/model/JNIDataModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public buf:[B

.field public bufSize:I

.field public filePath:Ljava/lang/String;

.field public fileSize:J

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J[BII)V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    .line 13
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->filePath:Ljava/lang/String;

    .line 14
    iput-wide p2, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->fileSize:J

    .line 15
    iput-object p4, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 16
    iput p5, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    .line 17
    iput p6, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->status:I

    .line 18
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    .line 21
    iput-object p1, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->buf:[B

    .line 22
    iput p2, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->bufSize:I

    .line 23
    iput p3, p0, Lcom/ximalaya/ting/android/player/model/JNIDataModel;->status:I

    .line 24
    return-void
.end method
