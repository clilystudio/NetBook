.class public Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chapterId:Ljava/lang/String;

.field private key:Ljava/lang/String;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapterId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->chapterId:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->key:Ljava/lang/String;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->ok:Z

    return v0
.end method

.method public setChapterId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->chapterId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->key:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/ChapterSingleKey;->ok:Z

    .line 18
    return-void
.end method
