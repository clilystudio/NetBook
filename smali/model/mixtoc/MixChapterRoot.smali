.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterRoot;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chapterResources:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterResource;

.field private ok:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapterResources()[Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterResource;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterRoot;->chapterResources:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterResource;

    return-object v0
.end method

.method public isOk()Z
    .locals 1

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterRoot;->ok:Z

    return v0
.end method

.method public setChapterResources([Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterResource;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterRoot;->chapterResources:[Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterResource;

    .line 28
    return-void
.end method

.method public setOk(Z)V
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/MixChapterRoot;->ok:Z

    .line 20
    return-void
.end method
