.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private block:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBlock()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;->block:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setBlock(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;->block:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SgMixChapter;->url:Ljava/lang/String;

    .line 20
    return-void
.end method
