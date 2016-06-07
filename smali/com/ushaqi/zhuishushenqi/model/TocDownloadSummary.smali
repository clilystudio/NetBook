.class public Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private count:I

.field private hostName:Ljava/lang/String;

.field private tocId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->count:I

    return v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getTocId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->tocId:Ljava/lang/String;

    return-object v0
.end method

.method public setCount(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->count:I

    .line 37
    return-void
.end method

.method public setHostName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->hostName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setTocId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/model/TocDownloadSummary;->tocId:Ljava/lang/String;

    .line 21
    return-void
.end method
