.class public Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;
.super Lcom/ushaqi/zhuishushenqi/model/Root;
.source "SourceFile"


# instance fields
.field private important:I

.field private lastReadImportantTime:Ljava/util/Date;

.field private lastReadUnimportantTime:Ljava/util/Date;

.field private unimportant:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/model/Root;-><init>()V

    return-void
.end method


# virtual methods
.method public getImportant()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->important:I

    return v0
.end method

.method public getLastReadImportantTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->lastReadImportantTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLastReadUnimportantTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->lastReadUnimportantTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUnimportant()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->unimportant:I

    return v0
.end method

.method public setImportant(I)V
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->important:I

    .line 20
    return-void
.end method

.method public setLastReadImportantTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->lastReadImportantTime:Ljava/util/Date;

    .line 36
    return-void
.end method

.method public setLastReadUnimportantTime(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->lastReadUnimportantTime:Ljava/util/Date;

    .line 44
    return-void
.end method

.method public setUnimportant(I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/NotifCountRoot;->unimportant:I

    .line 28
    return-void
.end method
