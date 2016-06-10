.class public Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bookshelfUpdated:Ljava/util/Date;

.field private code:Ljava/lang/String;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookshelfUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;->bookshelfUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;->code:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;->ok:Z

    return v0
.end method

.method public setBookshelfUpdated(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;->bookshelfUpdated:Ljava/util/Date;

    .line 31
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;->code:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/BookShelfSyncTime;->ok:Z

    .line 23
    return-void
.end method
