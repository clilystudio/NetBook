.class public Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private chapter:Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

.field private host:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChapter()Lcom/ushaqi/zhuishushenqi/model/ChapterLink;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;->chapter:Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;->source:Ljava/lang/String;

    return-object v0
.end method

.method public setChapter(Lcom/ushaqi/zhuishushenqi/model/ChapterLink;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;->chapter:Lcom/ushaqi/zhuishushenqi/model/ChapterLink;

    .line 38
    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;->host:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/MixChapterResource;->source:Ljava/lang/String;

    .line 22
    return-void
.end method
