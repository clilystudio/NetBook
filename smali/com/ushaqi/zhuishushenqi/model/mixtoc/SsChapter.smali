.class public Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private serialcontent:Ljava/lang/String;

.field private serialurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSerialcontent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapter;->serialcontent:Ljava/lang/String;

    return-object v0
.end method

.method public getSerialurl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapter;->serialurl:Ljava/lang/String;

    return-object v0
.end method

.method public setSerialcontent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapter;->serialcontent:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setSerialurl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/mixtoc/SsChapter;->serialurl:Ljava/lang/String;

    .line 28
    return-void
.end method
